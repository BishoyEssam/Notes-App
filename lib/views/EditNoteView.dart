// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notesapp/widgets/CustomAppBar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomAppBar(
                leading: "Edit",
                icon: Icons.done,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
