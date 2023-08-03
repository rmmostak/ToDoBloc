import 'package:flutter/material.dart';
import 'package:todo/screens/add_task.dart';
import 'package:todo/screens/task_list.dart';

import '../bloc/bloc_exports.dart';
import '../models/task.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (context, state) {
        List<Task> taskList = state.allTask;
        print('Taken: $taskList');
        return Scaffold(
          appBar: AppBar(
            title: const Text('ToDo'),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    size: 20,
                  ))
            ],
          ),
          body: TaskList(
            taskList: taskList,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _addTaskSheet(context),
            child: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
        );
      },
    );
  }

  void _addTaskSheet(BuildContext context) {
    showModalBottomSheet(
      isDismissible: true,
        isScrollControlled: true,
        context: context,
        builder: (context) =>  AddTaskScreen(),
            );
  }
}
