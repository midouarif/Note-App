import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/my_app_bar.dart';
import 'package:note_app/views/widgets/my_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          SizedBox(height: 50),
          MyAppBar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 50),
          MyTextField(hintText: 'Title'),
          SizedBox(height: 16),
          MyTextField(hintText: 'Description', maxlines: 5),
        ],
      ),
    );
  }
}
