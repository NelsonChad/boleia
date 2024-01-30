import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Color color;
  final Color fcolor;
  final String label;
  final IconData? icon;
  final bool hasIcon;
  final Function? onPressed;

  const AppButton(
      {super.key,
      this.width,
      this.height,
      required this.color,
      required this.label,
      this.onPressed,
      this.icon,
      required this.fcolor,
      required this.hasIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: () {
          onPressed!(); //perform function
        },
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(1.0),
          backgroundColor: MaterialStateProperty.all(color),
          padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
            (Set<MaterialState> states) {
              return const EdgeInsets.all(5);
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color: color),
            ),
          ),
        ),
        child: hasIcon
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  icon == null ? Container() : Icon(icon, color: fcolor),
                  Text(
                    label.toString(),
                    style: TextStyle(color: fcolor),
                  ),
                ],
              )
            : Text(
                label.toString(),
                style: TextStyle(color: fcolor),
              ),
      ),
    );
  }
}
