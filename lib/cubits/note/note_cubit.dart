import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/model/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>('notes');
      List<NoteModel> notes = notesBox.values.toList();
      emit(NoteSuccess(notes));
    } catch (e) {
      emit(NoteFailure(e.toString()));
      print(e.toString());
    }
  }
}
