import 'package:flutter/material.dart';
import 'package:todoey/Screens/tasklist.dart';

import 'addtask_screen.dart';

class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: const Padding(
                padding:  EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(child: Icon(Icons.list,size: 40,color: Colors.lightBlueAccent,),
                    backgroundColor: Colors.white,
                    radius: 30.0,),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text('Todoey',style: TextStyle(fontSize: 40,
                        fontWeight:FontWeight.w700,color: Colors.white),),
                  ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text('12 Tasks',style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                ),
                child: const Padding(
                  padding:EdgeInsets.symmetric(horizontal: 20),
                  child: TaskList(),
                ),
              ),
            )
          ],
        ),

      ),
      floatingActionButton:  FloatingActionButton(backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context)=>const AddTaskScreen());
        },
        child: CircleAvatar(
          child: Icon(Icons.add,size: 30,),radius: 30,
        ),
      ),
    );
  }
}




