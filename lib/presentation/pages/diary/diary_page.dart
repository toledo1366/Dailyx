import 'package:dailyx/presentation/widgets/sliders/cubit/emotion_slider_cubit.dart';
import 'package:dailyx/presentation/widgets/sliders/emotion_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:intl/intl.dart';
import 'package:stroke_text/stroke_text.dart';

import '../../../core/routing/app_router.dart';
import '../../../domain/models/diary/diary_entry.dart';
import '../../widgets/bottombar/custom_bottombar.dart';
import '../../widgets/end_drawer/custom_end_drawer.dart';

class DiaryPage extends StatelessWidget {
  final DiaryEntry entry;

  const DiaryPage({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    DateFormat formatter = DateFormat('EEEE,', 'pl_PL').add_yMd();
    
    return MultiBlocProvider(
      providers: [
        BlocProvider<EmotionSliderCubit>(create: (context) => EmotionSliderCubit(entry.satisfactionLevel))
      ], 
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 218, 162),
        appBar: AppBar(
          leading: IconButton(
            padding: const EdgeInsets.only(top: 10),
            icon: const DecoratedIcon(icon: Icon(Icons.arrow_back, color: Colors.white,),decoration: IconDecoration(border: IconBorder(width: 2)),),
            onPressed: () => router.pop(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
              child: StrokeText(
              text: formatter.format(entry.createdAt), 
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              strokeColor: Colors.black,
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)
            ),
            side: BorderSide(color: Colors.black)
          ),
          backgroundColor: const Color.fromARGB(255, 132, 200, 255),
          actions: [
            Builder(
              builder: (context) => IconButton(
                padding: const EdgeInsets.only(top: 10),
                icon: const DecoratedIcon(icon: Icon(Icons.more_horiz, color: Colors.white,),decoration: IconDecoration(border: IconBorder(width: 2)),),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            ),
          ],
        ),
        body: LayoutBuilder(
          builder: (context, constraints) => SizedBox(
            height: constraints.maxHeight,
            child: Column(
              children: [
                EmotionSlider(constraints, isSliderDisabled: true,),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: constraints.maxHeight * 0.8,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 201, 230, 254),
                    border: const Border.fromBorderSide(BorderSide()),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0, right: 20.0), 
                      child: StrokeText(
                        text: entry.content,
                        strokeWidth: 1.8,
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ),
        endDrawer: const CustomEndDrawer(),
        bottomNavigationBar: const CustomBottombar(),
      )
    );
  }
}