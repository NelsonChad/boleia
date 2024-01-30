import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/views/home/home_page.dart';
import 'package:boleia_app/ui/views/home_driver/home_driver.dart';
import 'package:boleia_app/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 100),
              const CircleAvatar(
                foregroundImage: AssetImage("assets/logo.png"),
                minRadius: 50,
                maxRadius: 75,
              ),
              const SizedBox(height: 60),
              SizedBox(
                width: 250,
                child: AppButton(
                  borderColor: Colors.grey,
                  color: Colors.white,
                  fcolor: Colors.grey,
                  icon: Icons.hail_rounded,
                  hasIcon: true,
                  label: "Entrar como Passageiro",
                  height: 60.0,
                  width: double.infinity,
                  onPressed: () {
                    navegateReplaceTo(context, const HomePage());
                  },
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 250,
                child: AppButton(
                  color: Colors.white,
                  fcolor: Colors.grey,
                  borderColor: Colors.grey,
                  icon: Icons.drive_eta,
                  hasIcon: true,
                  label: "Entrar como Motorista",
                  height: 60.0,
                  width: double.infinity,
                  onPressed: () {
                    navegateReplaceTo(context, const HomeDriver());
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
