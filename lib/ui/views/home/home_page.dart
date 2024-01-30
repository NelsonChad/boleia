import 'package:boleia_app/ui/views/components/app_drawer.dart';
import 'package:boleia_app/ui/views/home/recent_section.dart';
import 'package:boleia_app/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        leading: Builder(
          builder: (context) => // Ensure Scaffold is in context
              IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer()),
        ),
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          SizedBox(height: 30),
          SizedBox(
            width: 250,
            child: AppButton(
              borderColor: Colors.grey,
              color: Colors.white,
              fcolor: Colors.grey,
              icon: Icons.hail_rounded,
              hasIcon: true,
              label: "Pedir boleia         ",
              height: 60.0,
              width: double.infinity,
              onPressed: () {
                //navegateReplaceTo(context, const HomePage());
              },
            ),
          ),
          const SizedBox(height: 30),
          const RecentSection()
        ],
      ),
    );
  }
}
