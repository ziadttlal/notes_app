import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubiT extends Cubit<AddNoteState> {
  AddNoteCubiT() : super(AddNoteInitial());
  addNote(NoteModel note) async {
    try {
      emit(AddNoteLoading());
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());
      await notesBox.add(note);
      AddNoteSuccess();
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
