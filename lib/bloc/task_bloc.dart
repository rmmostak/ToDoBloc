import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/task.dart';

part 'task_event.dart';

part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(const TaskState()) {
    on<addTask>(_onAddTask);
    on<updateTask>(_onUpdateTask);
    on<deleteTask>(_onDeleteTask);
  }

  void _onAddTask(addTask event, Emitter<TaskState> emit) {
    final state = this.state;

    emit(TaskState(
      allTask: List.from(state.allTask)..add(event.task),
    ));
  }

  void _onUpdateTask(updateTask event, Emitter<TaskState> emit) {}

  void _onDeleteTask(deleteTask event, Emitter<TaskState> emit) {}
}
