import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600
            // color: Colors.black
          ),
        ),
        const Text(
          "see more",
          style: TextStyle(
            // color: Colors.black54
          ),
        ),
        
      ],
    );
  }
}


