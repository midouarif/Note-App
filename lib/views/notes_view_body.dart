import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note/note_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/widgets/my_app_bar.dart';
import 'package:note_app/views/widgets/notes_list.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});


  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {

  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetchAllNotes();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 70),
          MyAppBar(
            onPressed: () {},
            title: 'Note',
            icon: Icons.search,
          ),
          //SizedBox(height: 10),
          const Expanded(child: NotesList()),
        ],
      ),
    );
  }
}
