import 'package:disenio/src/basic_page.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diseños',
      debugShowCheckedModeBanner: false,
      initialRoute: 'basico',
      routes: {
        'basico': (BuildContext context) => BasicPage(),
      },

    );
  }
}

