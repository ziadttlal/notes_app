import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class CustomIconButtonInNote extends StatelessWidget {
  const CustomIconButtonInNote({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (dialogCtx) {
            return BlocProvider.value(
              value: context.read<NotesCubit>(),
              child: AlertDialog(
                title: const Text('Delete'),
                content: const Text(
                  'Are you sure you want to delete this note?',
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(dialogCtx),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<NotesCubit>().delateNote(note);
                      Navigator.pop(dialogCtx);
                    },
                    child: const Text(
                      'Delete',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      icon: const Icon(FontAwesomeIcons.trash, color: Colors.black, size: 24),
    );
  }
}
