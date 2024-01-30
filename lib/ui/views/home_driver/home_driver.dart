import 'package:boleia_app/ui/views/components/driver_drawer.dart';
import 'package:flutter/material.dart';

class HomeDriver extends StatelessWidget {
  const HomeDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Row(
          children: [
            Text(
              "Motorista",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(width: 10),
            Icon(Icons.drive_eta, color: Colors.white),
          ],
        ),
      ),
      drawer: const DriverDrawer(),
    );
  }
}
