// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../widgets/AddNoteBottomSheet.dart';
import '../widgets/notesViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const SafeArea(
        child: NotesViewBody(),
      ),
    );
  }
}
