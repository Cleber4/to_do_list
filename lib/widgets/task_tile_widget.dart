import 'package:flutter/material.dart';
// import 'package:to_do_list/widgets/task_checkbox_widget.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function(bool?) checkboxCallBack;
  final Function() longPressCallBack;

  TaskTile({
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallBack,
    required this.longPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFF151515),
          borderRadius: BorderRadius.circular(10.0),
          // gradient: LinearGradient(
          //     begin: Alignment.topLeft,
          //     end: Alignment(0.8, 0.0),
          //     colors: <Color>[Color(0xffee0000), Color(0xffeeee00)]),
        ),
        child: ListTile(
          onLongPress: longPressCallBack,
          leading: Container(
            color: isChecked ? Colors.redAccent : Colors.greenAccent,
            width: 7.0,
          ),
          title: Text(
            taskTitle,
            style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null,
                color: Colors.white),
          ),
          trailing: Checkbox(
            activeColor: Colors.deepPurpleAccent,
            fillColor: MaterialStateColor.resolveWith(
              (states) => Colors.deepPurpleAccent,
            ),
            value: isChecked,
            onChanged: checkboxCallBack,
          ),
        ),
      ),
    );
  }
}
