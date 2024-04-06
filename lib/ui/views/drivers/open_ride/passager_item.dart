import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PassagerItem extends StatefulWidget {
  final String name;
  final int index;
  final String address;
  final List<bool> accepted;
  final bool clickable;
  final Function() clicked;

  const PassagerItem(
      {super.key,
      required this.name,
      required this.address,
      required this.accepted,
      required this.index,
      required this.clicked,
      required this.clickable});

  @override
  State<PassagerItem> createState() => _PassagerItemState();
}

class _PassagerItemState extends State<PassagerItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.blue,
            minRadius: 25,
            maxRadius: 25,
            backgroundImage: AssetImage("assets/driver.png"),
          ),
          const SizedBox(width: 10),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.name.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Partida: ",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        widget.address.toString(),
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Chegada: ",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        widget.address.toString(),
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Rate: ",
                        style: TextStyle(fontSize: 12),
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 12,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) =>
                            const Icon(Icons.star, color: Colors.amber),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (!widget.accepted[widget.index])
                    SizedBox(
                      width: 70,
                      child: AppButton(
                        height: 40,
                        color: Colors.white,
                        label: "Aceitar",
                        fcolor: Colors.green,
                        hasIcon: false,
                        borderColor: Colors.green,
                        onPressed: () {
                          if (widget.clickable) {
                            setState(() {
                              widget.accepted[widget.index] = true;
                              widget.clicked();
                            });
                          } else {
                            showSnackBar(
                              context,
                              "Ja possua 5 passagerios",
                              Icons.info,
                              Colors.yellow,
                            );
                          }
                        },
                      ),
                    ),
                  if (widget.accepted[widget.index])
                    SizedBox(
                      width: 70,
                      child: InkWell(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.deepPurple),
                              borderRadius: BorderRadius.circular(10)),
                          child:
                              const Icon(Icons.call, color: Colors.deepPurple),
                        ),
                      ),
                    )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
