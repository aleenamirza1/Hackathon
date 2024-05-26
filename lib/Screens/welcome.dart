import 'package:flutter/material.dart';
import 'package:plantapp/Screens/login.dart';
import 'package:plantapp/components/mybuttons.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
                color: Color(0xff0d986a),
                borderRadius: BorderRadius.circular(17)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/Logo.png",
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  "plantify",
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text("plantify", style: TextStyle(fontStyle: FontStyle.italic)),
          SizedBox(
            height: 25,
          ),
          Text("plantify", style: TextStyle(fontStyle: FontStyle.italic)),
          SizedBox(
            height: 25,
          ),
          MyButton(
            text: "Welcome ",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          )
        ],
      ),
    );
  }
}
