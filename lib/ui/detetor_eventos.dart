import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetetorEventos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detetor"),
        backgroundColor: Colors.green,
      ),
      body: new Center(
        child: new MeuBotao(),
      ),
    );
  }
}

class MeuBotao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar = SnackBar(content: Text("gestos e eventos"));
        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(5.5)),
        child: Text('gestos'),
      ),
    );
  }
}
