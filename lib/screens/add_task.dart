import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
String taskInput='';

  @override
  Widget build(BuildContext context) {
    return  Container(
      color:Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                ),),
            SizedBox(height: 20.0),
            TextField(
              onChanged: (val){
                setState(() {
                  taskInput=val;
                });
              },
              decoration: InputDecoration(
                hintText: "Enter a Task",
                focusColor: Colors.cyan
              ),
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
          ElevatedButton(onPressed: (){},
              child: Text("Add"),
          )
          ],
        ),
      )
    );
  }
}
