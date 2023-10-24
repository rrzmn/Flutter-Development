import 'package:flutter/material.dart';
import 'package:todo_app/utilities/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add your new task',
              ),
            ),

            // buttons -> save / cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // save button
                MyButton(text: 'Add', onPressed: onSave),

                const SizedBox(
                  width: 12,
                ),

                // cancel button
                MyButton(text: 'Cancel', onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
