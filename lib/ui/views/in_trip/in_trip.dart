import 'package:boleia_app/ui/views/drivers/home_driver/home_driver.dart';
import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class InTrip extends StatefulWidget {
  const InTrip({super.key});

  @override
  State<InTrip> createState() => _InTripState();
}

class _InTripState extends State<InTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "In Ride",
          style: TextStyle(color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(Icons.drive_eta, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 100,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Stack(
              children: [
                const LinearProgressIndicator(),
                Positioned(
                  bottom: 10,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 32,
                    height: 50,
                    child: AppButton(
                      borderColor: Colors.red,
                      color: Colors.red,
                      fcolor: Colors.white,
                      label: "Cancelar",
                      onPressed: () {
                        showConfirmDialog(
                          context,
                          message: "Certeza que pretende cancelar a viagem?",
                          title: "Cancelar Viagem",
                          onOk: () {
                            navegateReplaceTo(context, HomeDriver());
                          },
                        );
                      },
                      hasIcon: false,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
