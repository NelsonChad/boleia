import 'package:boleia_app/ui/views/components/app_drawer.dart';
import 'package:boleia_app/ui/views/drivers/home_driver/home_driver.dart';
import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/views/login/login_view.dart';
import 'package:boleia_app/ui/views/passagers/driver_list/drivers_list.dart';
import 'package:boleia_app/ui/views/passagers/home/menu_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Builder(
          builder: (context) => // Ensure Scaffold is in context
              IconButton(
                  icon: const Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  onPressed: () => navegateTo(context, LoginPage())),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              navegateReplaceTo(context, const HomeDriver());
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.drive_eta,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Motorista",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          )
        ],
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 150),
            Text(
              "Hi, Nelson Chadali",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "Where do you want to go?",
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
                      navegateTo(context, const DriversList());
                    }),
                MenuCard(
                    icon: Icons.work,
                    title: 'Work',
                    onTap: () {
                      navegateTo(context, DriversList());
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
