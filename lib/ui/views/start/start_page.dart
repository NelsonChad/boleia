import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/views/home/home_page.dart';
import 'package:boleia_app/ui/views/home_driver/home_driver.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const CircleAvatar(
              foregroundImage: AssetImage("assets/logo.png"),
              minRadius: 50,
              maxRadius: 75,
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(100.0, 70.0)),
                maximumSize: MaterialStateProperty.all(const Size(180.0, 70.0)),
              ),
              onPressed: () {
                navegateReplaceTo(context, const HomeDriver());
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.drive_eta),
                  Text('Motorista'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(100.0, 70.0)),
                maximumSize: MaterialStateProperty.all(const Size(180.0, 70.0)),
              ),
              onPressed: () {
                navegateReplaceTo(context, const HomePage());
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.hail_rounded),
                  Text('Passageiro'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
