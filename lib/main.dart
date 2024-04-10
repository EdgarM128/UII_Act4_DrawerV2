import 'package:merazdrawerv2/profile1.dart';
import 'package:merazdrawerv2/profile2.dart';
import 'package:merazdrawerv2/profile3.dart';
import 'package:merazdrawerv2/profile4.dart';
import 'package:merazdrawerv2/profile5.dart';
import 'package:merazdrawerv2/profile6.dart';

import 'package:flutter/material.dart';

import 'inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String inicio = Inicio.routeName;
  static const String profile1 = Profile1.routeName;
  static const String profile2 = Profile2.routeName;
  static const String profile3 = Profile3.routeName;
  static const String profile4 = Profile4.routeName;
  static const String profile5 = Profile5.routeName;
  static const String profile6 = Profile6.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        inicio: (context) => Inicio(),
        profile1: (context) => Profile1(),
        profile2: (context) => Profile2(),
        profile3: (context) => Profile3(),
        profile4: (context) => Profile4(),
        profile5: (context) => Profile5(),
        profile6: (context) => Profile6(),
      },
      home: Inicio(),
    );
  }
}
