import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/my_text_field.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [SizedBox(height: 32), MyTextField(),],
      ),
    );
  }
}
