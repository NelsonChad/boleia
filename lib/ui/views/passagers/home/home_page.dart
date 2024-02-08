import 'package:boleia_app/ui/views/components/app_drawer.dart';
import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/views/passagers/driver_list/drivers_list.dart';
import 'package:boleia_app/ui/views/passagers/home/recent_content.dart';
import 'package:boleia_app/ui/views/passagers/home/recent_section.dart';
import 'package:boleia_app/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Row(
          children: [
            Text(
              "Passageiro",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(width: 10),
            Icon(Icons.card_travel, color: Colors.white),
          ],
        ),
        leading: Builder(
          builder: (context) => // Ensure Scaffold is in context
              IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer()),
        ),
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 16),
              width: double.infinity,
              child: const Text(
                "Saldo disponivel",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            Row(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.monetization_on, size: 30, color: Colors.blue),
                    Text(
                      "150MT",
                      style: TextStyle(color: Colors.blue, fontSize: 30),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: const Text(
                      "Recarregar",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 250,
              child: AppButton(
                borderColor: Colors.blue,
                color: Colors.blueAccent,
                fcolor: Colors.white,
                icon: Icons.hail_rounded,
                hasIcon: true,
                label: "Pedir boleia         ",
                height: 60.0,
                width: double.infinity,
                onPressed: () {
                  navegateTo(context, const DriversList());
                },
              ),
            ),
            const SizedBox(height: 50),
            const RecentSection(),
            const SizedBox(height: 10),
            const RecentContent(
              name: "Nelson Chadali",
              car: "Toyota Corrola, AAA 111 MC",
              color: Colors.green,
              status: "Terminada",
            ),
            const RecentContent(
              name: "Nelson Aaaaaa",
              car: "Toyota Auris, AAA 111 MC",
              color: Colors.red,
              status: "Cancelada",
            ),
          ],
        ),
      ),
    );
  }
}
