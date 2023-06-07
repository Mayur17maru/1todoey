import 'package:flutter/material.dart';
import 'package:todoey/Screens/task.dart';
import 'package:todoey/Screens/tasktile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks=[
    Task(name: 'Bread',isDone: false),
    Task(name: 'Milk',isDone: false),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListView.builder(itemBuilder: (context,index){
        return TaskTile(text: tasks[index].name,
            isChecked: tasks[index].isDone
        ,checkboxCallback:(checkboxStatus){
          setState(() {
            tasks[index].isToggled();
          });
            });
      },itemCount: tasks.length),
    );
  }
}