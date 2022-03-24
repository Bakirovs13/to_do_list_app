
import 'package:flutter/material.dart';
import 'package:to_do_list_app/todo.dart';


typedef ToggleTodoCallback = void Function(Todo,bool);

class TodoList extends StatelessWidget {

  final List<Todo> todos;
  final ToggleTodoCallback onTodoToggle;


  TodoList({required this.todos, required this.onTodoToggle});


  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];


    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.teal, width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
    child:CheckboxListTile(
      value: todo.isDone,
      activeColor: Colors.teal,
      title: Text(todo.title,style:
      TextStyle(
          fontSize: 15,fontWeight: FontWeight.bold),),
      onChanged: (bool? isChecked) {
        onTodoToggle(todo, isChecked!);
      },
    )
    ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemBuilder: _buildItem,
      itemCount: todos.length,

    );
  }
}