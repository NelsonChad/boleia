import 'dart:async';

import 'package:boleia_app/ui/views/drivers/home_driver/home_driver.dart';
import 'package:boleia_app/ui/views/drivers/open_ride/passager_item.dart';
import 'package:boleia_app/ui/views/drivers/share_trip/share_trip.dart';
import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/views/in_trip/in_trip.dart';
import 'package:boleia_app/ui/widgets/button2.dart';
import 'package:flutter/material.dart';

class OpenRideView extends StatefulWidget {
  final int sitQtd;
  const OpenRideView({super.key, required this.sitQtd});

  @override
  State<OpenRideView> createState() => _OpenRideViewState();
}

class _OpenRideViewState extends State<OpenRideView> {
  List requests = [];
  List<bool> accepted = [];
  int accetps = 0;
  bool ready = false;

  @override
  void initState() {
    _startAddingItems();
    super.initState();
  }

  void _startAddingItems() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        requests.add('Passager name ${requests.length + 1}');
        accepted.add(false);
      });
      if (requests.length >= 7) {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Ride is open",
          style: TextStyle(color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: () {
            showConfirmDialog(
              context,
              message: "Certeza que pretende cancelar a pedidos?",
              title: "Cancelar Pedidos",
              onOk: () {
                navegateReplaceTo(context, HomeDriver());
              },
            );
          },
          child: const Icon(Icons.close_rounded, color: Colors.red),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            !ready
                ? const Column(
                    children: [
                      Center(
                        child: Text(
                          "Waiting for Requests...",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: SizedBox(
                            width: 300, child: LinearProgressIndicator()),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Text(
                        "Atingido o numero de ${widget.sitQtd} Passageiros",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.red,
                        ),
                      ),
                      const Text(
                        "Pode Iniciar a sua viagem",
                      ),
                    ],
                  ),
            const SizedBox(height: 40),
            Stack(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Color(0xFFEDE7F6),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 220,
                    child: Column(
                      children: [
                        const SizedBox(height: 15),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "New requests (${requests.length})",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Badge(
                                backgroundColor: Colors.red,
                                label: Text("$accetps"),
                                alignment: Alignment.topLeft,
                                offset: const Offset(-10, -8),
                                child: const Text(
                                  "Accepted",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: SizedBox(
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height - 350,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: requests.length,
                                itemBuilder: (BuildContext context, int i) {
                                  return Column(
                                    children: [
                                      PassagerItem(
                                        name: requests[i],
                                        address: "Passager address $i",
                                        accepted: accepted,
                                        index: i,
                                        clickable: accetps < 5,
                                        clicked: () {
                                          setState(
                                            () {
                                              if (accetps < 5) {
                                                accetps++;
                                                print("Stepps are $accetps");
                                              }
                                              if (accetps == 5) {
                                                ready = true;
                                              }
                                            },
                                          );
                                        },
                                      ),
                                      const SizedBox(height: 10),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    width: MediaQuery.of(context).size.width,
                    bottom: 10,
                    child: AppButton2(
                      onTap: () {
                        if (accetps < 1) {
                          showSnackBar(
                            context,
                            "Insira pelo menos 1 passager",
                            Icons.info,
                            Colors.red,
                          );
                        } else {
                          navegateReplaceTo(context, InTrip());
                        }
                      },
                      text: "Start trip",
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
