import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/my_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          MyAppBar(),
        ],
      ),
    );
  }
}