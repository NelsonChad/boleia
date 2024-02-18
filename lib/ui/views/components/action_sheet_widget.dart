import 'package:boleia_app/ui/views/components/modal_header.dart';
import 'package:boleia_app/ui/widgets/button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

showDetainsActionSheetModal(
  context, {
  Function? action,
}) {
  showModalBottomSheet<void>(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return Container(
        height: 930,
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: ListView(
                children: [
                  const ModalHeader(),
                  const SizedBox(height: 10),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    minRadius: 40,
                    maxRadius: 40,
                    backgroundImage: AssetImage("assets/driver.png"),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      Text(
                        "Nelson Chadali",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(height: 5),
                      Text(
                        "10 Corridas completadas",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      const SizedBox(height: 5),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 15,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) =>
                            const Icon(Icons.star, color: Colors.black),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      const SizedBox(height: 25),
                      SizedBox(
                        width: 200,
                        child: Text(
                            "Por favor, Aguarde a resposta do motorista...",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                            textAlign: TextAlign.center),
                      ),
                      const SizedBox(height: 25),
                      AppButton2(
                        text: "CANCELAR PEDIDO",
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
