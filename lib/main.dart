import 'package:appdesign/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';

import 'src/pages/basic_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'scroll',
      routes: {
        'basic' : (contex)=> BasicPage(),
        'scroll' : (context) => ScrollPage(),
      },
    );
  }
}