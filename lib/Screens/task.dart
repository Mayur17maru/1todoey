class Task{
  late String name;
  late bool isDone;
  Task( {required this.name, required this.isDone});
  isToggled(){
    isDone=!isDone;
  }
}