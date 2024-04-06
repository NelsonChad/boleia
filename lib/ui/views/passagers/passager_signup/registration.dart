import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PassengerRegistrationPage extends StatelessWidget {
  const PassengerRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[400],
          actions: [
            GestureDetector(
                onTap: () {
                  FirebaseAuth.instance.signOut();
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
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "1. Pessoais",
              ),
              Tab(text: "2. Instituição"),
              Tab(text: "3. Documentos"),
            ],
          ),
        ),
        body: SafeArea(
          child: Container(),
        ),
      ),
    );
  }
}
