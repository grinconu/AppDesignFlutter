import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ComplexPage extends StatelessWidget {

  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _tittles(),
                _bottons(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottonNaigationBar(context),
    );
  }

  Widget _backgroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0,1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1),
            Color.fromRGBO(35, 37, 57, 1)
          ]
        )
      ),
    );

    final boxRose = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]
          ),
          borderRadius: BorderRadius.circular(80.0),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          top: -100,
          child: boxRose,
        )
      ],
    );
  }

  Widget _tittles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Clasify transaction', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 16.0))
          ],
        ),
      ),
    );
  }

  Widget _bottonNaigationBar(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0,),
            title: Container()
          )
        ],
      ),
    );
  }

  Widget _bottons(){
    return Table(
      children: [
        TableRow(
          children: [
            _createButton(Colors.blue, Icons.border_all, 'General'),
            _createButton(Colors.purpleAccent, Icons.directions_bus, 'Bus')
          ]
        ),
        TableRow(
          children: [
            _createButton(Colors.pinkAccent, Icons.shop, 'Buy'),
            _createButton(Colors.orange, Icons.insert_drive_file, 'File')
          ]
        ),
        TableRow(
          children: [
            _createButton(Colors.blueAccent, Icons.filter, 'Entretamen'),
            _createButton(Colors.green, Icons.cloud, 'Grocery')
          ]
        ),
        TableRow(
          children: [
            _createButton(Colors.red, Icons.collections, 'General'),
            _createButton(Colors.teal, Icons.help, 'Bus')
          ]
        )
      ],
    );
  }

  Widget _createButton(Color color, IconData icon, String text){
    final button = Container(
        height: 180.0,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20)
        ),
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: color,
              child: Icon(icon, color: Colors.white, size: 30,),
              radius: 35.0,
            ),
            Text(text, style: TextStyle(color: color),)
          ],
        ),
      );

      return GestureDetector(
        onTap: ()=> Navigator.pushNamed(_context, 'basic'),
        child: button,
      );
  }

}