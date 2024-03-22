import 'package:boleia_app/ui/views/login/login_view.dart';
import 'package:boleia_app/ui/views/start/start_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const StartPage();
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
