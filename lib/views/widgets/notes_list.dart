import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/views/widgets/note_item.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditNoteView()));
                  },
                  child: const NoteItem()),
            );
          }),
    );
  }
}
