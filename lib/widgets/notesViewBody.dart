// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notesapp/widgets/CustomAppBar.dart';
import 'NotesBuilder.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          CustomAppBar(
            leading: "Notes",
            icon: Icons.search,
          ),
          NotesBuilder(),
        ],
      ),
    );
  }
}
