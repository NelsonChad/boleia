import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;
  const MenuCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: (MediaQuery.of(context).size.width / 2) - 25,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black)),
        child: Stack(
          children: [
            Positioned(
              top: 22,
              left: 0,
              right: 0,
              child: Center(
                child: Icon(
                  icon,
                  size: 50,
                ),
              ),
            ),
            SizedBox(height: 20),
            Positioned(
              bottom: 10,
              left: 5,
              right: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                width: 200,
                height: 40,
                decoration: BoxDecoration(color: Colors.black),
                child: Center(
                  child: Text(title,
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () => onTap(),
    );
  }
}
