import 'package:flutter/material.dart';
import 'package:flutter_firstapp/util/dialog_box.dart';
import 'package:flutter_firstapp/util/todo_tile.dart';
import 'package:flutter_firstapp/home_page.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List TodoList = [
  ["Do excercise", false],
  ["Do coding", false],
];

//Function for checkbox
void checkBoxChanged(bool? value, int index){
    setState(() {
      TodoList[index][1] = !TodoList[index][1];
    });
}

//Create new task
void  createNewTask(){
  showDialog(
    context: context, 
    builder: (context){
    return DialogueBox();
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('TO DO'),
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: TodoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: TodoList[index][0], 
            taskCompleted: TodoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            );
        },
      ),
    );
  }
}