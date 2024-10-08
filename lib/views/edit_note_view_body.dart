import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note/note_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/widgets/my_app_bar.dart';
import 'package:note_app/views/widgets/my_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title;
  String? description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          MyAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.description =
                    description ?? widget.note.description;
                BlocProvider.of<NoteCubit>(context).fetchAllNotes();

                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: Icons.check),
          const SizedBox(height: 50),
          MyTextField(
            initialValue: widget.note.title,
            hintText: 'Title',
            onChange: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          MyTextField(
            initialValue: widget.note.description,
            hintText: 'Description',
            maxlines: 5,
            onChange: (value) {
              description = value;
            },
          ),
        ],
      ),
    );
  }
}
