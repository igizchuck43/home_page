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
          scrollDirection: Axis.vertical,
          child: Expanded(
            child: GridView.count(
              childAspectRatio: 2.2,
              padding: EdgeInsets.only(left: 16, right: 16),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: [
                Image.asset("assets/images/police-48.png"),
                Image.asset("assets/images/police-48.png"),
                Image.asset("assets/images/police-48.png"),
                Image.asset("assets/images/police-48.png"),
                Image.asset("assets/images/police-48.png"),
                Image.asset("assets/images/police-48.png"),

              ],

            ),
          ),

          // child: SpecialLink2(),
        ),
      ],
    );
  }

  Row SpecialLink2() {
    return Row(
          children: [
            SpecialLinkCard(
              image: "assets/images/ambulance-48.png",
              category: "Book an Ambulance",

              press: () {
                // Navigator.pushNamed(context, ProductsScreen.routeName);
              },
            ),
            SpecialLinkCard(
              image: "assets/images/Image Banner 3.png",
              category: "Fashion",

              press: () {
                // Navigator.pushNamed(context, ProductsScreen.routeName);
              },
            ),

            const SizedBox(width: 20),
          ],
        );
  }
}

class SpecialLinkCard extends StatelessWidget {
  const SpecialLinkCard({
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
          height: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFF6E4),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(color: Colors.black),
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
