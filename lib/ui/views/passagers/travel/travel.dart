import 'package:boleia_app/ui/views/components/finish_action_sheet_widget.dart';
import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/views/passagers/driver_profile/car_registration.dart';
import 'package:boleia_app/ui/views/passagers/travel/text_item.dart';
import 'package:boleia_app/ui/widgets/button2.dart';
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
      appBar: AppBar(
        title: Text(
          "Em Viagem...",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            TextItem(label: "Viatura", value: "Toyota Racts"),
            TextItem(label: "Lugares", value: "4 Lugares"),
            TextItem(label: "Hora de partida", value: "16:30"),
            TextItem(label: "A/C", value: "Disponivel"),
            TextItem(label: "Restricoes", value: "Nenhuma"),
            const SizedBox(height: 15),
            TextItem(label: "Celular", value: "845554545"),
            Row(
              children: [
                Text(
                  "Cor da Viatura",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Text(
                  "Vermelho",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.white),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                )
              ],
            ),
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
                  SizedBox(height: 10),
                  SizedBox(
                      height: 60,
                      child: AppButton2(
                        onTap: () {
                          //Navigator.of(context).pop();
                          showSnackBar(
                            context,
                            "Viagem Terminada",
                            Icons.check,
                            Colors.green,
                          );
                          showFinishActionSheetModal(context);
                        },
                        text: "Terminar Viagem",
                      )),
                ],
              ),
            ))
      ]),
    );
  }
}
