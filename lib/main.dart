import 'package:flutter/material.dart';

import 'package:disenio/src/basic_page.dart';
import 'package:disenio/src/pages/scroll_page.dart';
import 'package:disenio/src/pages/botones_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diseños',
      debugShowCheckedModeBanner: false,
      initialRoute: 'botones',
      routes: {
        'basico': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage(),
      },

    );
  }
}

