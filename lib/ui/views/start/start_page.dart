import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/views/passagers/home/home_page.dart';
import 'package:boleia_app/ui/views/drivers/home_driver/home_driver.dart';
import 'package:boleia_app/ui/views/login/login_view.dart';
import 'package:boleia_app/ui/views/passagers/passager_signup/registration.dart';
import 'package:boleia_app/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        actions: [
          GestureDetector(
              onTap: () {
                navegateReplaceTo(context, LoginPage());
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Sign out',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(height: 100),
              const CircleAvatar(
                foregroundImage: AssetImage("assets/logo.png"),
                minRadius: 65,
                maxRadius: 90,
              ),
              const SizedBox(height: 150),
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
                    navegateReplaceTo(
                        context, const PassengerRegistrationPage());
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
