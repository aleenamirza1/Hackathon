import 'package:flutter/material.dart';
import 'package:plantapp/Screens/description.dart';

class Containers extends StatelessWidget {
  final String assetsImage;
  const Containers({
    super.key,
    required this.assetsImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Image.asset(assetsImage),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Description()),
        );
      },
    );
  }
}
