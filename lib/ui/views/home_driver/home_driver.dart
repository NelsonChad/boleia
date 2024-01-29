import 'package:boleia_app/ui/views/components/driver_drawer.dart';
import 'package:flutter/material.dart';

class HomeDriver extends StatelessWidget {
  const HomeDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Driver"),
      ),
      drawer: const DriverDrawer(),
    );
  }
}
