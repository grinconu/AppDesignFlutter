import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(108,192,218,1.0),
      body: Center(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            _pageOne(),
            _pageTwo(context)
          ],
        ),
      ),
    );
  }

  Widget _pageOne() {
    return Stack(
      children: <Widget>[
        _colorBackground(),
        _imageBackground(),
        _textWidget(),
      ],
    );
  }

   Widget _colorBackground() {
     return Container(
       width: double.infinity,
       height: double.infinity,
       color: Color.fromRGBO(108,192,218,1.0),
     );
   }

   Widget _imageBackground(){
     return Container(
       width: double.infinity,
       height: double.infinity,
       child: Image(
         image: AssetImage('assets/scroll-1.png'),
         fit: BoxFit.cover,
       ),
     );
   }


  Widget _textWidget(){
    final styleText = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Text('11°', style: styleText,),
          Text('Miercoles', style: styleText,),
          Expanded(child: Container(),),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }

  Widget _pageTwo(BuildContext context){
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
            child: Text('Bienvenidos', style: TextStyle(fontSize: 20.0, color: Colors.white),),
          ),
          onPressed: ()=> Navigator.pushNamed(context, 'complex'),
        ),
      ),
    );
  }
}