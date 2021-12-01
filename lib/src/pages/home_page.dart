// Dintre del directori pages, hi aniran les pàogines
// Widgets, que normalment empren la totalitat de la pantalla

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final contador = 10;
  final estil = TextStyle(fontSize: 24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nombre de clicks:', style: estil),
            Text('$contador', style: estil,),
          ],
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Instruccions a executar
            print('Uep, com anam?');
            // Dona error ja que utilitzam un StatelessWidget
            //contador = contador + 1;
          },
          child: Icon(Icons.add),
          ),
          // Al final no ho canviarem però que sapigueu com és pot fer
          //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          
    );
  }
}