import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class HomeDetails extends StatelessWidget {

  Cards card1 = new Cards(
      title: "Book an Ambulance",
      img: "assets/images/ambulance-48.png"
  );

  Cards card2 = new Cards(
      title: "First Aid Tips",
      img: "assets/images/first-aid-48.png"
  );

  Cards card3 = new Cards(
      title: "Security Organ",
      img: "assets/images/police-48.png"
  );

  Cards card4 = new Cards(
      title: "Emergency Contacts",
      img: "assets/images/contact-48.png"
  );

  Cards card5 = new Cards(
      title: "Private Guard",
      img: "assets/images/person-guard-48.png"
  );

  Cards card6 = new Cards(
      title: "Travel Insurance",
      img: "assets/images/insurance-policy-48.png"
  );

  HomeDetails({super.key});



  // const HomeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    List<Cards> myList = [card1, card2, card3, card4, card5, card6];
    var color = 0xFFFFF6E4;
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: myList.map((data) {
          return Container(
            decoration: BoxDecoration(
              color: Color(color),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(data.img, width: 42),
                SizedBox(height: 14),
                Text(
                  data.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),

                SizedBox(height: 14),

              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Cards{
  String title;
  String img;
  Cards({
    required this.title,
    required this.img
  });
}
