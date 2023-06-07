import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget{

  TaskTile({required this.text,required this.isChecked, required this.checkboxCallback});
  String text;
  bool isChecked=false;
  Function checkboxCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text,style:  TextStyle(fontSize: 25,decoration: isChecked ?TextDecoration.lineThrough:null),),
      trailing: Checkbox(
        activeColor:Colors.lightBlueAccent,
        value: isChecked, onChanged: (bool? value) {
        checkboxCallback(value);
      },
    )
    );
  }
}
// (newvalue) {
// setState(() {
// isChecked=newvalue!;
// });
// },)