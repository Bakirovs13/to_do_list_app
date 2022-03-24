import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_list_app/todo_list_screen.dart';


void main(){
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(
       primaryColor: Colors.teal
     ),
     debugShowCheckedModeBanner: false,
     title:'Jack to-do app',
     home: TodoListScreen()
   );
  }
}

