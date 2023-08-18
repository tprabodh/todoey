import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

final bool isChecked;
final String taskTitle;
final Function checkboxCallback;
final VoidCallback longPressCallback;

const TaskTile({super.key,
  required this.isChecked,
  required this.taskTitle,
  required this.checkboxCallback,
  required this.longPressCallback,
});

  @override
  Widget build(BuildContext context) {

    return ListTile(
      title:  Text(taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged:(newValue){
          checkboxCallback(newValue);
        },
      ),
      onLongPress: longPressCallback,
    );
  }
}