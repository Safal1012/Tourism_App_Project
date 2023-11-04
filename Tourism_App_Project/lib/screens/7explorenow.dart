import 'package:flutter/material.dart';
import 'package:tourism_app_project/screens/8payments.dart';

import '../data/dummydata.dart';

class ExplorePage extends StatelessWidget {
  final String image;

  ExplorePage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final detail = details.firstWhere((detail) => detail['image'] == image);

    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(image))),
            child: Stack(
              children: [
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Column(
                    children: [
                      const Text(
                        "Crown Plaza\nKochi,Kerala",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 25,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text(
                            "8.4/85 reviews",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  child: Icon(
                    Icons.favorite_border,
                    size: 30,
                    color: Colors.white,
                  ),
                  bottom: 20,
                  right: 15,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26.0, right: 25, top: 18),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                ),
                const Icon(Icons.star_border_outlined),
                const Spacer(),
                const Text(
                  "\$200",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 4),
            child: Row(
              children: [
                const Icon(Icons.location_on_outlined),
                Text(
                  "3km from Lulu Mall",
                  style: TextStyle(color: Colors.grey[800], fontSize: 15),
                ),
                const Spacer(),
                Text(
                  "/per night",
                  style: TextStyle(color: Colors.grey[800], fontSize: 15),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BookingPage()));
              },
              child: const Text(
                "Book Now",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  fixedSize: const Size.fromHeight(45)),
            ),
          ),
          const Divider(),

          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Kochi",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    detail['description'],
                    softWrap: true,
                    style: const TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          )
          // Add more widgets to display other details
        ],
      ),
    );
  }
}
