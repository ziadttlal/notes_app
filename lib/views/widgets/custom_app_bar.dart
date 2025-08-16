import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Text('Notes', style: TextStyle(fontSize: 25)),
              Spacer(),
              CustomSearchIcon(),
            ],
          ),
          CustomNoteItem(),
        ],
      ),
    );
  }
}
