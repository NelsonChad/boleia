import 'package:flutter/material.dart';

class ModalHeader extends StatelessWidget {
  const ModalHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          const Flexible(
            child: SizedBox(
              width: 80,
              child: Divider(color: Colors.grey, thickness: 3),
            ),
          ),
          Flexible(
            child: Container(width: 10),
          )
        ],
      ),
    );
  }
}
