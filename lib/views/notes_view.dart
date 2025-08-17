import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      ),
      body: NotesViewBody(),
    );
  }
}
