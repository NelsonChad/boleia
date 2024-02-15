import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/views/passagers/driver_profile/car_registration.dart';
import 'package:boleia_app/ui/views/passagers/driver_profile/text_item.dart';
import 'package:boleia_app/ui/views/passagers/travel/travel.dart';
import 'package:boleia_app/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DriverProfile extends StatefulWidget {
  const DriverProfile({super.key});

  @override
  State<DriverProfile> createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/ractis.jpg"),
              Positioned(
                top: 30,
                left: 20,
                child: CircleAvatar(
                  // foregroundImage: AssetImage("assets/logo.png"),
                  backgroundColor: Colors.blue,
                  minRadius: 50,
                  maxRadius: 50,
                  backgroundImage: AssetImage("assets/driver.png"),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "Classificacao: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 25,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) =>
                          const Icon(Icons.star, color: Colors.amber),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextItem(label: "Nome", value: "Carlos manuel"),
                    Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.monetization_on,
                                size: 30, color: Colors.blue),
                            Text(
                              "50TM",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 30),
                            ),
                          ],
                        ),
                        CarRegistration(resgitration: "AAA 555 MC")
                      ],
                    ),
                  ],
                ),
                TextItem(label: "Viatura", value: "Toyota Racts"),
                TextItem(label: "Lugares", value: "4 Lugares"),
                TextItem(label: "Hora de Partida", value: "16:30"),
                TextItem(label: "Hora de Chegada", value: "17:30"),
                TextItem(label: "A/C", value: "Disponivel"),
                TextItem(label: "Restricoes", value: "Nenhuma"),
                SizedBox(height: 30),
                AppButton(
                  borderColor: Colors.blue,
                  color: Colors.blueAccent,
                  fcolor: Colors.white,
                  icon: Icons.hail_rounded,
                  hasIcon: true,
                  label: "Pedir boleia         ",
                  height: 60.0,
                  width: double.infinity,
                  onPressed: () {
                    //navegateReplaceTo(context, const DriversList());
                    showAlertDialog(context);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: const Text("Fechar"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: const Text("Ver"),
      onPressed: () {
        Navigator.of(context).pop();
        navegateTo(context, const TravelView());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Informação!"),
      content: Text("O Motirista Carlos Manuel acaba de aceitar o seu pedido."),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
