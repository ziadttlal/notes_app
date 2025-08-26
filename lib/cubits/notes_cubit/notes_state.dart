part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoadSuccess extends NotesState {
  final List<NoteModel> notes;
  NotesLoadSuccess(this.notes);
}
