import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Image(
                image: AssetImage("assets/images/1.png"),
                height: 300,
              )),
          Row(
            children: [
              Text(
                "Overview",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
