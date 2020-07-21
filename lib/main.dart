import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:appdesign/src/pages/complex_page.dart';
import 'package:appdesign/src/pages/scroll_page.dart';

import 'src/pages/basic_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'complex',
      routes: {
        'basic' : (contex)=> BasicPage(),
        'scroll' : (context) => ScrollPage(),
        'complex' : (context) => ComplexPage(),
      },
    );
  }
}