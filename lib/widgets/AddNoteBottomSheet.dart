// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'CustomButton.dart';
import 'CustomTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomTextField(hint: 'Title'),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 10,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
