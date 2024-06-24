import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:stride/src/rust/api/filter.dart';
import 'package:stride/src/rust/api/repository.dart';
import 'package:stride/src/rust/task.dart';

@immutable
abstract class TaskEvent {}

final class TaskFetchEvent extends TaskEvent {}

final class TaskAddEvent extends TaskEvent {
  final Task task;
  TaskAddEvent({required this.task});
}

final class TaskRemoveEvent extends TaskEvent {
  final Task task;
  TaskRemoveEvent({required this.task});
}

final class TaskRemoveAllEvent extends TaskEvent {
  TaskRemoveAllEvent();
}

final class TaskChangeStatusEvent extends TaskEvent {
  final Task task;
  final TaskStatus status;
  TaskChangeStatusEvent({required this.task, required this.status});
}

final class TaskUpdateEvent extends TaskEvent {
  final Task task;
  TaskUpdateEvent({required this.task});
}

final class TaskSyncEvent extends TaskEvent {
  TaskSyncEvent();
}

final class TaskFilterEvent extends TaskEvent {
  final Filter? filter;
  TaskFilterEvent({this.filter});
}

class TaskState {
  final List<Task> tasks;
  final bool syncing;
  final ConnectionError? error;
  const TaskState({required this.tasks, this.syncing = false, this.error});
}

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskStorage repository;
  Filter? filter;

  Future<List<Task>> _tasks() async {
    if (filter == null) {
      final tasks = await repository.tasks();
      return tasks;
    } else {
      final tasks = await repository.tasksWithFilter(filter: filter!);
      return tasks;
    }
  }

  TaskBloc({required this.repository}) : super(const TaskState(tasks: [])) {
    on<TaskFetchEvent>((event, emit) async {
      final tasks = await repository.tasks();
      emit(TaskState(tasks: tasks));
    });

    on<TaskAddEvent>((event, emit) async {
      await repository.add(task: event.task);
      emit(TaskState(tasks: await _tasks()));
    });

    on<TaskRemoveEvent>((event, emit) async {
      if (event.task.status == TaskStatus.deleted) {
        await repository.removeTask(task: event.task);
      } else {
        await repository.changeCategory(
          task: event.task,
          status: TaskStatus.deleted,
        );
      }

      emit(TaskState(tasks: await _tasks()));
    });

    on<TaskRemoveAllEvent>((event, emit) async {
      await repository.clear();
      emit(TaskState(tasks: await _tasks()));
    });

    on<TaskChangeStatusEvent>((event, emit) async {
      await repository.changeCategory(
        task: event.task,
        status: event.status,
      );
      emit(TaskState(tasks: await _tasks()));
    });

    on<TaskUpdateEvent>((event, emit) async {
      await repository.update(task: event.task);
      emit(TaskState(tasks: await _tasks()));
    });

    on<TaskSyncEvent>((event, emit) async {
      final tasksOld = await _tasks();
      emit(TaskState(tasks: tasksOld, syncing: true));

      try {
        await repository.sync();
      } on ConnectionError catch (error) {
        emit(TaskState(tasks: tasksOld, syncing: false, error: error));
        return;
      }

      emit(TaskState(tasks: await _tasks()));
    });

    on<TaskFilterEvent>((event, emit) async {
      filter = event.filter;
      emit(TaskState(tasks: await _tasks()));
    });
  }
}
