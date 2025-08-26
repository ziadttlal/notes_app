import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        final notes = state is NotesLoadSuccess ? state.notes : <NoteModel>[];
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            final item = notes[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              child: CustomNoteItem(note: item),
            );
          },
        );
      },
    );
  }
}
