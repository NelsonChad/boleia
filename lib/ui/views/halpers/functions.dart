import 'package:boleia_app/ui/views/passagers/travel/travel.dart';
import 'package:flutter/material.dart';

navegateTo(context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

navegateReplaceTo(context, Widget page) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

showSnackBar(BuildContext context, String message, IconData icon, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Row(
      children: [
        Icon(icon, color: color),
        const Padding(padding: EdgeInsets.only(left: 8)),
        Text(message),
      ],
    ),
  ));
}

showAlertDialog(BuildContext context) {
  Widget continueButton = TextButton(
    child: const Text("OK"),
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
