import 'package:flutter/material.dart';

/// EMOJI LIST ITEM WITH TEXT AT THE BOTTOM
class EmojiItem extends StatelessWidget {
  //params
  final String emoji, labelText;

  //constructor
  const EmojiItem({Key? key, required this.emoji, required this.labelText})
      : super(key: key);

  //design
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///EMOJI
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[500],
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          child: Center(
            child: Text(
              emoji,
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),

        ///LABEL TEXT
        Text(
          labelText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
