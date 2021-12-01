import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState() => _ContadorPageState();
}

// El guió baix fa que aquesta classe sigui privada 
// i només és pugui emprar dintre d'aquesta classe
class _ContadorPageState extends State<ContadorPage>{
  final _estil = TextStyle(fontSize: 24);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador amb Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nombre de clicks:', style: _estil),
            Text('$_contador', style: _estil,),
          ],
        ),
        ),
        floatingActionButton: _crearBotons(),
          // Al final no ho canviarem però que sapigueu com és pot fer
          //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          
    );
  }

  Widget _crearBotons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero) ,onPressed: _reinicia),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove) ,onPressed: _restar),
        SizedBox(width: 5.0),
        // Observau que faig una referència al mètode però no sense parèntesi,
        // ja que sinó s'executaria quan es creï l'objecte
        FloatingActionButton(child: Icon(Icons.add) ,onPressed: _sumar),
      ],
    );
  }

  // Faig el mètode privat
  void _sumar(){
    setState(() {
      _contador++;
    });

    // Aquest seria el mateix codi:
    //setState() => _contador++;
  }

  void _restar(){
    setState(() {
      _contador--;
    });
  }
  void _reinicia(){
    setState(() {
      _contador = 0;
    });
  }
}