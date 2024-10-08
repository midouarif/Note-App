import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String? initialValue;
  final String hintText;
  final int maxlines;
  const MyTextField({super.key, required this.hintText, this.maxlines = 1,  this.onSaved, this.onChange, this.initialValue});
  final void Function(String?)? onSaved;
  final void Function(String?)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue ,
      onSaved: onSaved,
      onChanged: onChange,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter some text';
        }
        return null;
      },
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
