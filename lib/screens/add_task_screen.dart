import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTask;

    return Container(
      color: Color(0XFF151515),
      child: Container(
        padding: EdgeInsets.all(7.4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Adicionar Tarefa',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              autofocus: true,
              cursorColor: Colors.deepPurpleAccent,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTask = newText;
              },
            ),
            TextButton(
              child: Text(
                'Adicionar',
                style: TextStyle(fontSize: 15.0),
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.deepPurpleAccent,
                shadowColor: Colors.black,
                elevation: 5,
              ),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newTask!);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
