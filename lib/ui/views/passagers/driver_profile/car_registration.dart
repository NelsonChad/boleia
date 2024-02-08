import 'package:flutter/material.dart';

class CarRegistration extends StatelessWidget {
  final String resgitration;
  const CarRegistration({super.key, required this.resgitration});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Text(
        resgitration,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}
