import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Coluna extends StatelessWidget {
  void botaoFlutuante()=> debugPrint("botão flutuante");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scafold"),
        backgroundColor: Colors.orangeAccent,
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.accessibility),
            onPressed: () => debugPrint("acessibilidade"),
          ),
          IconButton(
            icon: new Icon(Icons.alarm),
            onPressed: () => debugPrint("alarme"),
          ),
          IconButton(
            icon: new Icon(Icons.save),
            onPressed: () => debugPrint("salvar"),
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text("Haroldo"),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: InkWell(
                child: Text("Click"),
                onTap: () => debugPrint("Tap"),
                onLongPress: () => debugPrint("Press longo"),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text("Alarm")),
          BottomNavigationBarItem(
            icon: Icon(Icons.print),
            title: Text("Print"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(,
        onPressed: botaoFlutuante,
        child: Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }
}
