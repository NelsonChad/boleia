import 'package:flutter/material.dart';

navegateTo(context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

navegateReplaceTo(context, Widget page) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

showSnackBar(BuildContext context, String message, IconData icon, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Row(
      children: [
        Icon(icon, color: color),
        const Padding(padding: EdgeInsets.only(left: 8)),
        Text(message),
      ],
    ),
  ));
}
