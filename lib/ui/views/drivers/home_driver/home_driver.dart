import 'package:boleia_app/ui/views/components/driver_drawer.dart';
import 'package:boleia_app/ui/views/drivers/share_trip/share_trip.dart';
import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/views/login/login_view.dart';
import 'package:boleia_app/ui/views/passagers/home/home_page.dart';
import 'package:boleia_app/ui/views/passagers/home/menu_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeDriver extends StatelessWidget {
  HomeDriver({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          GestureDetector(
            onTap: () {
              navegateReplaceTo(context, const HomePage());
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.drive_eta,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Passageiro",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
        leading: GestureDetector(
          onTap: () {
            signUserOut();
            navegateReplaceTo(context, LoginPage());
          },
          child: const Icon(Icons.exit_to_app, color: Colors.white),
        ),
      ),
      drawer: const DriverDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 150),
            Text(
              "Hi, ${user.email!}",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Para onde é que deseja viajar?",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: MediaQuery.of(context).size.height - 550),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MenuCard(
                    icon: Icons.home,
                    title: 'Home',
                    onTap: () {
                      navegateTo(context, const ShareTrip(where: "Casa"));
                    }),
                MenuCard(
                    icon: Icons.work,
                    title: 'Work',
                    onTap: () {
                      navegateTo(context, const ShareTrip(where: "Trabalho"));
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
