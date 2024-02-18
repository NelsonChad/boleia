import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/views/passagers/driver_profile/driver_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Driver extends StatelessWidget {
  final String status;
  final String name;
  final String car;

  const Driver(
      {super.key, required this.status, required this.name, required this.car});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navegateTo(context, const DriverProfile());
      },
      child: Card(
        elevation: 1,
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    // foregroundImage: AssetImage("assets/logo.png"),
                    backgroundColor: Colors.blue,
                    minRadius: 30,
                    maxRadius: 30,
                    backgroundImage: AssetImage("assets/driver.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        name.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        car,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Text(
                        "500 corridas",
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Icon(Icons.airline_seat_recline_extra_sharp,
                              size: 20, color: Colors.black),
                          Text(
                            "4 Lugares",
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          "~ 30min",
                          style: const TextStyle(
                              fontSize: 12, color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.monetization_on,
                              size: 20, color: Colors.black),
                          Text(
                            "50MT",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      ),
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
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
