// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xff62fcd7),
        borderRadius: BorderRadius.circular(9),
      ),
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
