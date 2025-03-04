import 'package:dailyx/core/di/di.dart';
import 'package:dailyx/presentation/pages/main/widgets/tasks_summary_widget/cubit/tasks_summary_widget_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:widgets_easier/widgets_easier.dart';

import '../../../../../domain/models/tasks/task.dart';

class TasksSummaryWidget extends StatelessWidget {
  const TasksSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksSummaryWidgetCubit, TasksSummaryWidgetState>(
      builder: (context, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: StrokeText(
              text: 'Dzisiejsze bieżące zadania:',
              strokeWidth: 1.8,
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          state.map(
            loading: (_) => const Text('Loading'), 
            success: (data) => _createLoadedTasksSummary(context, data.tasks),
            noEntry: (_) => _createEmptyTasksSummary(context),
            error: (_) => const Text('Error'),
          )
        ],
      )
    );
  }

  Widget _createEmptyTasksSummary(BuildContext context) => GestureDetector(
    onTap: () => context.read<TasksSummaryWidgetCubit>().onNewTaskCreate(),
    child: Container(
      height: 50,
      width: double.infinity,
      decoration: const ShapeDecoration(
        color: Color.fromARGB(255, 201, 230, 254),
        shape: DashedBorder(
          color: Colors.black,
          width: 1,
          borderRadius: BorderRadius.all(Radius.circular(10))
        )
      ),
      child: const Center(
        child: StrokeText(
          text: 'Brak bieżących zadań na dziś',
          strokeWidth: 1.8,
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    ),
  );

  Widget _createLoadedTasksSummary(BuildContext context, List<Task> tasks) => GestureDetector(
    onTap: () {},
    child: Container(
      height: 400,//MediaQuery.sizeOf(context).height,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 201, 230, 254),
        border: Border.fromBorderSide(
          BorderSide(
            color: Colors.black,
            width: 1,
          )
        ),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) => Text(tasks[index].summary)
      ),
    ),
  );
}