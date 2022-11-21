import 'package:flutter/material.dart';

import '../models/classes/Todo.dart';

class TodoProvider with ChangeNotifier{

  List<Todo> toDos=[];

  addTodos(String title,String desc){
    if (title!="") toDos.add(Todo.fromMap({"title":title,"desc":desc}));
    notifyListeners();

  }

  remove(Todo todo){
    int l=toDos.indexWhere((item) => item.title == todo.title);
    toDos.removeAt(l);
    notifyListeners();
  }



}