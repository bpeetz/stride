import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stride/blocs/tasks_bloc.dart';
import 'package:stride/routes/routes.dart';
import 'package:stride/src/rust/task.dart';

class TaskItemWidget extends StatelessWidget {
  final Task task;
  const TaskItemWidget({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    Widget tags;
    if (task.tags.isEmpty) {
      tags = const Text("");
    } else {
      tags = Wrap(
        children: task.tags
            .map(
              (tag) => Chip(
                label: Text(tag),
                labelPadding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            )
            .map((chip) => Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: chip,
                ))
            .toList(),
      );
    }

    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              task.description,
            ),
          ],
        ),
      ),
      trailing: Wrap(
        children: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.taskEdit, arguments: task);
            },
          ),
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              context.read<TaskBloc>().add(TaskRemoveEvent(task: task));
            },
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          tags,
          Text(task.due?.toUtc().toString().substring(0, 16) ?? ""),
        ],
      ),
    );
  }
}
