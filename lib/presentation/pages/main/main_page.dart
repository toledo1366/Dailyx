import 'package:dailyx/core/di/di.dart';
import 'package:dailyx/core/routing/app_router.dart';
import 'package:dailyx/presentation/pages/main/widgets/diary_summary_entry_widget/cubit/diary_summary_entry_widget_cubit.dart';
import 'package:dailyx/presentation/pages/main/widgets/diary_summary_entry_widget/diary_summary_entry_widget.dart';
import 'package:dailyx/presentation/pages/main/widgets/tasks_summary_widget/cubit/tasks_summary_widget_cubit.dart';
import 'package:dailyx/presentation/pages/main/widgets/tasks_summary_widget/tasks_summary_widget.dart';
import 'package:dailyx/presentation/widgets/end_drawer/custom_end_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:intl/intl.dart';
import 'package:stroke_text/stroke_text.dart';

import '../../../core/extension/colors_extension.dart';
import '../../widgets/bottombar/custom_bottombar.dart';
import 'cubit/main_page_cubit.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  DateTime focusedDay = DateTime.now();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final MainPageCubit cubit = di.get<MainPageCubit>();
    cubit.getTasksList(focusedDay);

    return MultiBlocProvider(
      providers: [
        BlocProvider<MainPageCubit>(create: (context) => cubit),
        BlocProvider<DiarySummaryEntryWidgetCubit>(create: (context) => di.get<DiarySummaryEntryWidgetCubit>()),
        BlocProvider<TasksSummaryWidgetCubit>(create: (context) => di.get<TasksSummaryWidgetCubit>()),
      ],
      child: BlocBuilder<MainPageCubit, MainPageState>(
        builder: (context, state) => Scaffold(
          backgroundColor: ColorsExtension.fromHex('#F8F9FA'),
          appBar: AppBar(
            centerTitle: false,
            title: const Padding(
              padding: EdgeInsets.only(top: 52, left: 21, bottom: 48, right: 68),
                child: Text(
                'Cześć, Damian!', 
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 50), 
              child: Container(
                child: buildDaySelector(context),
              ),
            ),
            actions: [
              Builder(
                builder: (context) => IconButton(
                  
                  padding: const EdgeInsets.only(top: 20, bottom: 48, right: 18),
                  icon: const DecoratedIcon(icon: Icon(Icons.more_horiz, color: Colors.black,),),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              ),
            ],
          ),
          body: state.map(
            created: (_) => SafeArea(
              bottom: false,
              child: buildContent(context),
            ), 
            loading: (_) => Container(), 
            error: (message) => Container()
          ),
          endDrawer: const CustomEndDrawer(),
          bottomNavigationBar: const CustomBottombar(),
        ),
      ),
    );
  }
  
  Widget buildContent(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => RefreshIndicator(
          child: SingleChildScrollView(
            controller: _scrollController,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DiarySummaryEntryWidget(),
                SizedBox(height: 30,),
                TasksSummaryWidget(),
              ],
            ),
          ), 
          onRefresh: () async {
            await BlocProvider.of<DiarySummaryEntryWidgetCubit>(context).checkEntryForSelectedDate(focusedDay);
            await BlocProvider.of<TasksSummaryWidgetCubit>(context).checkForTasks();
          }
        )
    );
  }
  
  Widget buildDaySelector(BuildContext context) {
    DateFormat formatter = DateFormat('EEEE,', 'pl_PL').add_yMd();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: (){
            setState(() {
              focusedDay = focusedDay.subtract(const Duration(days: 1));
              BlocProvider.of<DiarySummaryEntryWidgetCubit>(context).checkEntryForSelectedDate(focusedDay);
            });
          }, 
          icon: const DecoratedIcon(
            decoration: IconDecoration(
              border: IconBorder(
                width: 2
              )
            ),
            icon: Icon(
              Icons.chevron_left, 
              color: Colors.black, 
              size: 30,
            )
          )
        ),
        Text(
          formatter.format(focusedDay),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              focusedDay = focusedDay.add(const Duration(days: 1));
              BlocProvider.of<DiarySummaryEntryWidgetCubit>(context).checkEntryForSelectedDate(focusedDay);
            });
          }, 
          icon: const DecoratedIcon(
            decoration: IconDecoration(
              border: IconBorder(
                width: 2
              )
            ),
            icon: Icon(
              Icons.chevron_right, 
              color: Colors.black, 
              size: 30,
            )
          )
        ),
      ],
    );
  }

  Widget buildSummary(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Center(
        child: GridView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            mainAxisExtent: 175
          ),
          children: [
            GestureDetector(
              onTap: (){},
              child: const Card(
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black), borderRadius: BorderRadius.all(Radius.circular(10))),
                color: Color.fromARGB(255, 172, 173, 255),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '24',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text('Oczekujące')
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: const Card(
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black), borderRadius: BorderRadius.all(Radius.circular(10))),
                color: Color.fromARGB(255, 255, 94, 94),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '24',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text('W trakcie')
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: const Card(
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black), borderRadius: BorderRadius.all(Radius.circular(10))),
                color: Color.fromARGB(255, 104, 210, 255),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '24',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text('Po terminie')
                    ],
                  ),
                ),  
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: const Card(
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black), borderRadius: BorderRadius.all(Radius.circular(10))),
                color: Color.fromARGB(255, 131, 255, 135),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '24',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text('Zakończone')
                    ],
                  ),
                ),  
              ),
            ),
          ],
        ),
      )
    );
  }
}