// This file is not being used, it should be deleted soon

import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/views/passagers/passager_signup/signup_page.dart';
import 'package:boleia_app/ui/views/start/start_page.dart';
import 'package:boleia_app/ui/widgets/button.dart';
import 'package:boleia_app/ui/widgets/formfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 80),
                const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  child: AppButton(
                    color: Colors.red,
                    fcolor: Colors.white,
                    borderColor: Colors.red,
                    icon: Icons.facebook,
                    hasIcon: true,
                    label: "Entrar com o Google",
                    height: 60.0,
                    width: double.infinity,
                    onPressed: () {
                      navegateReplaceTo(context, const StartPage());
                    },
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  child: AppButton(
                    color: Colors.blue,
                    fcolor: Colors.white,
                    borderColor: Colors.blue,
                    icon: Icons.facebook,
                    hasIcon: true,
                    label: "Entrar com o Facebook",
                    height: 60.0,
                    width: double.infinity,
                    onPressed: () {
                      navegateReplaceTo(context, const StartPage());
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "_____________ OR ______________",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 20),
                Formfield(
                  callbackFunction: (x) {},
                  hintText: "Digite o seu email",
                  type: "TEXT",
                  isEnabled: true,
                  isPassword: false,
                  nameController: TextEditingController(),
                ),
                const SizedBox(height: 20),
                Formfield(
                  callbackFunction: (x) {},
                  hintText: "Digite a sua senha",
                  type: "TEXT",
                  isEnabled: true,
                  isPassword: true,
                  nameController: TextEditingController(),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: AppButton(
                    color: Colors.green,
                    fcolor: Colors.white,
                    borderColor: Colors.green,
                    hasIcon: false,
                    label: "Login",
                    height: 60.0,
                    width: double.infinity,
                    onPressed: () {
                      navegateReplaceTo(context, const StartPage());
                    },
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Ainda nao possue uma conta? "),
                        InkWell(
                          child: const Text(
                            "Crie uma!",
                            style: TextStyle(color: Colors.blue),
                          ),
                          onTap: () {
                            navegateTo(context, const SignupPage());
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
