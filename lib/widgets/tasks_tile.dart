import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("This is a Task"),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked=value!;
          });
        },
      ),
    );
  }
}