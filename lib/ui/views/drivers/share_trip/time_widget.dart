import 'package:flutter/material.dart';

class TimeWidget extends StatefulWidget {
  final String hour;
  final String minute;
  const TimeWidget({super.key, required this.hour, required this.minute});

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Center(
              child: Text(
            widget.hour,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            ":",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Center(
              child: Text(
            widget.minute,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
        )
      ],
    );
  }
}
