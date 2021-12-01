import 'package:exercici1_contador/src/pages/contador_page.dart';
import 'package:exercici1_contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class SaMevaApp extends StatelessWidget{
  @override
  Widget build(context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: ContadorPage(),
        ),
    );
  }
}