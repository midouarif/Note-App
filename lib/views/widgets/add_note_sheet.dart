import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/views/widgets/my_button.dart';
import 'package:note_app/views/widgets/my_text_field.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            MyTextField(
              hintText: 'Title',
            ),
            SizedBox(height: 16),
            MyTextField(
              hintText: 'Description',
              maxlines: 5,
            ),
            SizedBox(height: 50),
            MyButton(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
