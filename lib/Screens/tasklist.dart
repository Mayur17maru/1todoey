import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Screens/taskdata.dart';
import 'package:todoey/Screens/tasktile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context,index){
            return TaskTile(
              taskTitle : taskData.Tasks[index].name,
              isChecked : taskData.Tasks[index].isDone,
              checkboxCallback : (checkboxState){
                taskData.updateTask(taskData.Tasks[index]);
              },
              longPressCallback: () {
                taskData.deleteTask(taskData.Tasks[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}