import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
final bool isChecked;
final String taskTitle;

TaskTile({super.key, required this.isChecked,required this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  Text("This is a Task",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (bool? newValue) {
          // setState(() {
          //   isChecked=newValue!;
          // });
        },
      ),
    );
  }
}