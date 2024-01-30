import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/views/home/home_page.dart';
import 'package:boleia_app/ui/views/start/start_page.dart';
import 'package:flutter/material.dart';

class DriverDrawer extends StatelessWidget {
  const DriverDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  // foregroundImage: AssetImage("assets/logo.png"),
                  backgroundColor: Colors.amber,
                  minRadius: 50,
                  maxRadius: 50,
                ),
                SizedBox(height: 10),
                Text(
                  'Driver name',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Ver dados'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Depositar dinheiro'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Mudar para passageiro'),
            onTap: () {
              Navigator.pop(context);
              navegateReplaceTo(context, const HomePage());
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app_rounded),
            title: const Text('Sair'),
            onTap: () {
              Navigator.pop(context);
              navegateReplaceTo(context, const StartPage());
            },
          ),
        ],
      ),
    );
  }
}
