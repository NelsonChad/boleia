import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/views/passagers/driver_profile/car_registration.dart';
import 'package:boleia_app/ui/views/passagers/travel/text_item.dart';
import 'package:boleia_app/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class TravelView extends StatefulWidget {
  const TravelView({super.key});

  @override
  State<TravelView> createState() => _TravelViewState();
}

class _TravelViewState extends State<TravelView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sua Viagem")),
      body: Stack(children: [
        Container(
          padding: EdgeInsets.all(16),
          color: Colors.grey[300],
          child: Column(children: [
            Center(
              child: CircleAvatar(
                // foregroundImage: AssetImage("assets/logo.png"),
                backgroundColor: Colors.blue,
                minRadius: 50,
                maxRadius: 50,
                backgroundImage: AssetImage("assets/driver.png"),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Carlos manuel",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            TextItem(label: "Viatura", value: "Toyota Racts"),
            TextItem(label: "Lugares", value: "4 Lugares"),
            TextItem(label: "Hora de Partida", value: "16:30"),
            TextItem(label: "Hora de Chegada", value: "17:30"),
            TextItem(label: "A/C", value: "Disponivel"),
            TextItem(label: "Restricoes", value: "Nenhuma"),
            Row(
              children: [
                Text("Matricula",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(width: 10),
                CarRegistration(resgitration: "AAA 555 MC")
              ],
            ),
            const SizedBox(height: 30),
          ]),
        ),
        Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "45min",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 60,
                    child: AppButton(
                      borderColor: Colors.red,
                      color: Colors.red,
                      fcolor: Colors.white,
                      icon: Icons.hail_rounded,
                      hasIcon: true,
                      label: "Cancelar Viagem        ",
                      height: 30.0,
                      width: double.infinity,
                      onPressed: () {
                        Navigator.of(context).pop();
                        showSnackBar(
                          context,
                          "Viagem Cancelada",
                          Icons.close,
                          Colors.red,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}
