import 'package:flutter/material.dart';

class TextItem extends StatelessWidget {
  final String label;
  final String value;
  const TextItem({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(
              color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 10),
        Text(
          value,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
