import 'package:flutter/material.dart';
import 'package:flutter_firstapp/util/my_button.dart';

class DialogueBox extends StatelessWidget {
  const DialogueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(children: [
          //to get user input
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new taost",
            ),
          ),

          //button = save+cancel
          Row(
            children: [
              //save button
              MyButton(text: "save", onPressed: () {}),

              //cancel button
              MyButton(text:"Cancel", onPressed: () {})

            ],
          )
        ]),
      ),
    );
  }
}