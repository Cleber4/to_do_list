import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;

  AddTaskScreen({required this.addTaskCallBack});
  @override
  Widget build(BuildContext context) {
    String? newTask;

    return Container(
      color: Color(0XFF757575),
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
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 15.0,
              ),
            ),
            TextField(
              autofocus: true,
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
                backgroundColor: Colors.lightBlueAccent,
                shadowColor: Colors.black,
                elevation: 5,
              ),
              onPressed: () {
                addTaskCallBack(newTask);
              },
            ),
          ],
        ),
      ),
    );
  }
}
