import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final int maxlines;
  const MyTextField({super.key, required this.hintText, this.maxlines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: Colors.deepPurple,
      decoration: InputDecoration(
        hintText: hintText,

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
