import 'package:flutter/material.dart';
import 'package:notesapp/widgets/CustomAppBar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}