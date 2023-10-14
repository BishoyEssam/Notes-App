import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 18,
        bottom: 18,
        left: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFFcc80),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Note Title',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'SubTitle',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 20,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 28,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              'May 21,2022',
              style: TextStyle(
                color: Colors.black.withOpacity(0.8),
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
