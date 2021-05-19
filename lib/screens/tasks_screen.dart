import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/task_data.dart';
import 'package:to_do_list/screens/add_task_screen.dart';
import 'package:to_do_list/widgets/task_list_widget.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTaskCount = Provider.of<TaskData>(context).taskCount;
    String textTask;
    if (textTaskCount == 0) {
      textTask = 'tarefas no momento';
    } else if (textTaskCount == 1) {
      textTask = 'Tarefa';
    } else {
      textTask = 'Tarefas';
    }

    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: false,
            builder: (context) => AddTaskScreen(),
          );
        },
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, bottom: 30.0, left: 30.0, right: 30.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                        size: 30.0,
                        color: Colors.deepPurpleAccent,
                      ),
                      radius: 30.0,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'To Do',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '$textTaskCount $textTask',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Color(0XFF1E1E1E),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  )),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
