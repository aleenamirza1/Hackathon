import 'package:flutter/material.dart';
import 'package:plantapp/components/classes.dart';

class NaviItems {
  String title;
  Widget widget;
  Icon icon;
  Color color;

  NaviItems(this.title, this.widget, this.icon, this.color);
}

class Constants {
  Color primary = Color(0xff0d986a);
  static var drawerList = [
    NaviItems(
        "Shop",
        const Shop(),
        const Icon(Icons.shopping_basket, color: Colors.white),
        Color(0xff0d986a)),
    NaviItems(
        "Plant Care",
        const Shop(),
        const Icon(Icons.local_hospital_sharp, color: Colors.white),
        Color(0xff0d986a)),
    NaviItems("Community", const Shop(),
        const Icon(Icons.people, color: Colors.white), Color(0xff0d986a)),
    NaviItems("My Account", const Shop(),
        const Icon(Icons.person, color: Colors.white), Color(0xff0d986a)),
    NaviItems("Track Order", const Shop(),
        const Icon(Icons.bus_alert, color: Colors.white), Color(0xff0d986a))
  ];
}

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    Color primary = Color(0xff0d986a);
    TextEditingController eatcontroller = TextEditingController();
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 12,
        ),
        Container(
          child: Image.asset(
            'assets/images/Redeem.png',
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            controller: eatcontroller,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primary,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: 'Search ',
              hintStyle: TextStyle(
                color: primary,
              ),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Top Picks",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: primary),
                ),
                SizedBox(
                  width: 22,
                ),
                Text(
                  "Indoor",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 22,
                ),
                Text(
                  "Outdoor",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 22,
                ),
                Text(
                  "seads",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Containers(assetsImage: 'assets/images/0.png'),
        SizedBox(
          height: 7,
        ),
        SizedBox(
          height: 7,
        ),
        Containers(assetsImage: 'assets/images/1.png'),
        SizedBox(
          height: 7,
        ),
        Containers(assetsImage: 'assets/images/2.png'),
        SizedBox(
          height: 7,
        ),
        Containers(assetsImage: 'assets/images/3.png'),
        SizedBox(
          height: 7,
        ),
        Containers(assetsImage: 'assets/images/4.png'),
        SizedBox(
          height: 7,
        ),
        Containers(assetsImage: 'assets/images/5.png'),
        SizedBox(
          height: 7,
        ),
      ]),
    );
  }
}
