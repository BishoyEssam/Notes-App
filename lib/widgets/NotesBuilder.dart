// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notesapp/widgets/NoteItem.dart';

class NotesBuilder extends StatelessWidget {
  const NotesBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => const NoteItem(),
        itemCount: 10,
      ),
    );
  }
}
