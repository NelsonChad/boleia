import 'package:boleia_app/ui/views/components/app_drawer.dart';
import 'package:boleia_app/ui/views/home/recent_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        leading: Builder(
          builder: (context) => // Ensure Scaffold is in context
              IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer()),
        ),
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          SizedBox(height: 30),
          ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(200.0, 70.0)),
              maximumSize: MaterialStateProperty.all(const Size(200.0, 70.0)),
            ),
            onPressed: () {},
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.hail_rounded),
                Text('Pedir Bolaia'),
              ],
            ),
          ),
          const SizedBox(height: 30),
          RecentSection()
        ],
      ),
    );
  }
}
