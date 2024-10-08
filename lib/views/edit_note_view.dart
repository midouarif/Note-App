import 'package:flutter/material.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
 EditNoteView({super.key, required this.note});
  NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(note: note,),
    );
  }
}
