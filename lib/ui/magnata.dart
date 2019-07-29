import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Magnata extends StatefulWidget {
  @override
  _MagnataState createState() => _MagnataState();
}

class _MagnataState extends State<Magnata> {
  int _contadorGrana = 0;
  int _valorGrana = 0;

  void _mandaGrana() {
    setState(() {
      _contadorGrana = _contadorGrana + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magnata"),
        backgroundColor: Colors.green,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            Center(
              child: Text(
                "Fique rico",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w400,
                    fontSize: 29.9),
              ),
            ),

            Expanded(
                child: Center(
              child: Text(
                "\$ $_contadorGrana",
                style: TextStyle(
                    fontSize: 45,
                    color: _contadorGrana >= 10000
                        ? Colors.blueAccent
                        : Colors.amber,
                    fontWeight: FontWeight.w700),
              ),
            )),
            Expanded(
              child: Center(
                child: FlatButton(
                  onPressed: _mandaGrana,
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text("Mais grana"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
