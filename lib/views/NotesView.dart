import 'package:flutter/material.dart';
import '../widgets/notesViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: const SafeArea(
        child: NotesViewBody(),
      ),
    );
  }
}
