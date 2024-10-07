part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class NoteLoading extends NoteState {}

final class NoteSuccess extends NoteState {
  final List<NoteModel> notes;
  NoteSuccess(this.notes);
}

final class NoteFailure extends NoteState {
  final String errorMessage;
  NoteFailure(this.errorMessage);
}
