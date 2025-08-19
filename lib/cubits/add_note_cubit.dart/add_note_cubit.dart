import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'add_note_state.dart';

class AddNoteCubiT extends Cubit<AddNoteState> {
  AddNoteCubiT() : super(AddNoteInitial());
}
