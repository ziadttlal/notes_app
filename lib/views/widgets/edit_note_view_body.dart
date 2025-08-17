import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 26),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomTextField(hint: 'Title'),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomTextField(hint: 'Content', maxLines: 5),
          ),
        ],
      ),
    );
  }
}
