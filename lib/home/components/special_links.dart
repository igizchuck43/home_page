import 'package:flutter/material.dart';


import 'section_tile.dart';


class SpecialLinks extends StatelessWidget {
  const SpecialLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "Special Links",
            press: () {},
          ),
        ),
        SingleChildScrollView(

          // scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SpecialOfferCard(
                    image: "assets/images/ambulance2.jpg",
                    category: "Order Ambulance",
                    press: () {

                    },
                  ),
                  SpecialOfferCard(
                    image: "assets/images/first-aid.png",
                    category: "First Aid Tips",
                    press: () {

                    },
                  ),

                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SpecialOfferCard(
                    image: "assets/images/private.png",
                    category: "Order Private Guard",
                    press: () {

                    },
                  ),
                  SpecialOfferCard(
                    image: "assets/images/police.png",
                    category: "Security Organ",
                    press: () {

                    },
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SpecialOfferCard(
                    image: "assets/images/contact.png",
                    category: "Emergency Contacts",
                    press: () {

                    },
                  ),
                  SpecialOfferCard(
                    image: "assets/images/insurance.png",
                    category: "Travel Insurance",
                    press: () {

                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,

    required this.press,
  }) : super(key: key);

  final String category, image;

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 200,
          height: 90,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  // fit: BoxFit.cover,
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black54,
                        Colors.black38,
                        Colors.black26,
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
