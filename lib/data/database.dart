import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box('myBox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ['Study Flutter', false],
      ['Make Lunch', false],
    ];
  }

  // load the data from the database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  // update the database
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
