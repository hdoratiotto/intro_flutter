import 'package:flutter/material.dart';

class BenVindo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: Colors.blueAccent,
      child: Center(
        child: Text("Haroldo Doratiotto",
          textDirection: TextDirection.ltr ,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),

        ),
      ),
    );
  }
}