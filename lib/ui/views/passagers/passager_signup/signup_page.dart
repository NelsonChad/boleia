import 'package:boleia_app/ui/views/login/login_view.dart';
import 'package:boleia_app/ui/widgets/login_text_field.dart';
import 'package:boleia_app/ui/widgets/square_tile.dart';
import 'package:flutter/material.dart';
import 'package:boleia_app/ui/widgets/login_button.dart';
import 'package:boleia_app/ui/views/halpers/functions.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  // text editing controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // SafeArea creates a Widget that avoids the notch area, and the other operating system interfaces (such as Edge borders, etc)
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 25),
                // logo
                const Icon(
                  Icons.car_crash_rounded,
                  size: 65,
                ),
                const SizedBox(height: 25),
                // welcome back, you've been missed
                Text(
                  'Olá, vamos cria uma nova conta',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25),

                // username textfield
                LoginTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                LoginTextField(
                  controller: passwordController,
                  hintText: 'Senha',
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                LoginTextField(
                  controller: confirmPasswordController,
                  hintText: 'Confirmar senha',
                  obscureText: true,
                ),

                const SizedBox(height: 25),
                // sign in button
                LoginButton(
                  onTap: () {},
                  text: 'Criar conta',
                ),

                const SizedBox(height: 30),

                // or continue with
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Text(
                      'Ou criar com',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'assets/google.png'),
                    SizedBox(width: 25),
                    SquareTile(imagePath: 'assets/facebook.png')
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Já tem uma conta?',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        navegateTo(context, LoginPage());
                      },
                      child: const Text(
                        'Entrar agora',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )

                // google + apple sign in buttons

                // not a member? register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}
