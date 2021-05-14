import 'package:flutter/material.dart';
import 'package:to_do_list/models/task.dart';
import 'package:to_do_list/widgets/task_tile_widget.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Comprar Arroz'),
    Task(name: 'Comprar feijão'),
    Task(name: 'Comprar Carne'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallBack: (checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
