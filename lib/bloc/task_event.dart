part of 'task_bloc.dart';

abstract class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object> get props => [];
}

class addTask extends TaskEvent {
  final Task task;

  const addTask({required this.task});

  @override
  List<Object> get props => [task];
}

class updateTask extends TaskEvent {
  final Task task;

  const updateTask({required this.task});

  @override
  List<Object> get props => [task];
}

class deleteTask extends TaskEvent {
  final Task task;

  const deleteTask({required this.task});

  @override
  List<Object> get props => [task];
}
