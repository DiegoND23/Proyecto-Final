import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/blog_page.dart';
import 'package:flutter_application_1/pages/donde_ir_page.dart.dart';
import 'package:flutter_application_1/pages/home_page.dart.dart';
import 'package:flutter_application_1/pages/info_practica_page.dart.dart';
import 'package:flutter_application_1/pages/que_hacer_page.dart.dart';


class AppExploraCalambeo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explora Calambeo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/Lugares Recomendados': (context) => DondeIrPage(),
        '/queHacer': (context) => QueHacerPage(),
        '/infoPractica': (context) => InfoPracticaPage(),
        '/blog': (context) => BlogPage(),
      },
    );
  }
}