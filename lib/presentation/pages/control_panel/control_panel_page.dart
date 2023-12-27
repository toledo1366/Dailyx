import 'package:auto_route/auto_route.dart';
import 'package:dailyx/core/routing/app_router.dart';
import 'package:dailyx/presentation/pages/control_panel/cubit/control_panel_cubit.dart';
import 'package:dailyx/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/custom_bottom_bar.dart';

@RoutePage()
class ControlPanelPage extends StatefulWidget {
  const ControlPanelPage({super.key});

  @override
  State<ControlPanelPage> createState() => _ControlPanelPageState();
}

class _ControlPanelPageState extends State<ControlPanelPage> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ControlPanelCubit>(
      create: (context) => ControlPanelCubit()..initToDos(),
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'Hello, Damian!',
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // await context.router.push(const TaskFormRoute());
          },
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))
          ),
          backgroundColor: Colors.deepPurple, 
          child: const Icon(Icons.add),
        ),
        body: BlocBuilder<ControlPanelCubit, ControlPanelState>(
          builder: (context, state) => state.map(
            initialized: (_) => const Text('Loading'),
            loading: (_) => const Text('Loading'),
            failed: (_) => Container(), 
            success: (data) => _buildContent(context, data.toDos)
            //  _buildContent(context, data.toDos),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(),
      ),
    );
  }

  Widget _buildContent(BuildContext context, List<String> data) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildQuickSummaryCard(context),
          const SizedBox(height: 40,),
          SizedBox(
            height: 200.0,
            child: _buildToDoSection(context, data),
          ),
          const SizedBox(height: 40,),
          SizedBox(
            height: 300.0,
            child: _buildInProgressSection(context),
          ),
        ],
      ),
    );
  }
  
  Widget _buildQuickSummaryCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
      child: SizedBox(
        height: 150.0,
        width: double.infinity,
        child: Card(
          elevation: 20.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0)
          ),
          color: Colors.deepPurpleAccent,
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 35.0),
                  child: Text(
                    'Today: ${DateFormat.MMMMEEEEd().format(DateTime.now())}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 20.0),
                  child: Text(
                    '2/10 tasks',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  Widget _buildToDoSection(BuildContext context, List<String> data) {

    return Padding(
      padding: const EdgeInsets.only(left: 25.0,top: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Row(
              children: [
                const Text('To do'),
                const SizedBox(width: 10.0,),
                Container(
                  height: 25,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 215, 201, 253),
                  ),
                  child: Center(
                    child: Text(
                      data.length.toString(),
                      style: const TextStyle(
                        color: Colors.deepPurpleAccent
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index) => _buildToDoItem(context, index, data[index]),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildToDoItem(BuildContext context, int index, String data) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Card(
        color: const Color.fromARGB(255, 198, 179, 252),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(data),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text('Title'),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text('End date'),
              ),
            ],
          ),
        )
      ),
    );
  }
  
  Widget _buildInProgressSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Row(
              children: [
                const Text('In progress'),
                const SizedBox(width: 10.0,),
                Container(
                  height: 25,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 215, 201, 253),
                  ),
                  child: const Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 243, 239, 255),
            ),
            child: SizedBox(
              height: 250,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => _buildInProgressItem(context, index),
              ),
            ),
          )
        ],
      ),
    );
  }
  
  Widget _buildInProgressItem(BuildContext context, int index) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Row(
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Text('Type'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Text('Title'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Text('End date'),
                  ),
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircularPercentIndicator(
                radius: 40,
                center: const Text('40%'),
                percent: 0.4,
                progressColor: Colors.deepPurpleAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}