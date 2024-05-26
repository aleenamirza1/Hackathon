import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color primary = Color(0xff0d986a);
    return SizedBox(
        width: 200,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
              decoration: BoxDecoration(
                  color: primary, borderRadius: BorderRadius.circular(40)),
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(text, style: TextStyle(fontStyle: FontStyle.italic)),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )
                ],
              )),
        ));
  }
}
