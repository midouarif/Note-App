import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.deepPurple,
      decoration: InputDecoration(
        hintText: 'Title',
        //hintStyle: const TextStyle(color: Colors.deepPurple),
        border: myBorder(),
        focusedBorder: myBorder(Colors.deepPurple),
        enabledBorder: myBorder(),
      ),
    );
  }

  OutlineInputBorder myBorder([color]) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
