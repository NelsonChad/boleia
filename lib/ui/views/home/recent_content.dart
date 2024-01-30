import 'package:flutter/material.dart';

class RecentContent extends StatelessWidget {
  final String status;
  final Color color;
  final String name;
  final String car;

  const RecentContent(
      {super.key,
      required this.status,
      required this.color,
      required this.name,
      required this.car});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              // foregroundImage: AssetImage("assets/logo.png"),
              backgroundColor: Colors.blue,
              minRadius: 20,
              maxRadius: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(name.toString()),
                Text(
                  car,
                  style: const TextStyle(fontSize: 10, color: Colors.grey),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                status,
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.grey[300],
        )
      ],
    );
  }
}
