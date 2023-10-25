import 'package:auto_route/auto_route.dart';
import 'package:dailyx/core/locator/locator.dart';
import 'package:dailyx/presentation/pages/task_form/cubit/task_form_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TaskFormPage extends StatefulWidget {
  const TaskFormPage({super.key});

  @override
  State<TaskFormPage> createState() => _TaskFormPageState();
}

class _TaskFormPageState extends State<TaskFormPage> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cubit = di.get<TaskFormCubit>();

    return BlocProvider<TaskFormCubit>(
      create: (context) => cubit,
      child: BlocBuilder<TaskFormCubit, TaskFormState>(
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: const Text('Nowe zadanie'),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                    hintText: 'Tytuł',
                  ),
                  controller: textController,
                  onChanged: (value) => cubit.titleSettingHandler(value),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}