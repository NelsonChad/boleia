import 'package:boleia_app/ui/views/passagers/driver_list/driver.dart';
import 'package:flutter/material.dart';

class DriversList extends StatefulWidget {
  const DriversList({super.key});

  @override
  State<DriversList> createState() => _DriversListState();
}

class _DriversListState extends State<DriversList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Motoristas Disponiveis"),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 20),
            child: Container(
              child: const Text(
                "lista de motoristas proximos de ti, verifique a disponibilidade dos lugares e a hora de partida",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Driver(
            car: "Mazda Demio",
            name: "Carlos Manuel",
            status: "Disponivel",
          ),
          Driver(
            car: "Toyota Demio",
            name: "Manuel Alvaro",
            status: "Disponivel",
          ),
          Driver(
            car: "Toyota Vitz",
            name: "Isaias Manuel",
            status: "Disponivel",
          )
        ],
      ),
    );
  }
}
