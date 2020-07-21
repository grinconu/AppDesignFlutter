import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final styleTittle = TextStyle(fontSize: 15);
  final styleSubTittle = TextStyle(fontSize: 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _createImage(),
            _createTittle(),
            _createActions(context),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
          ],
        ),
      ),
    );
  }

  Image _createImage() {
    return Image(
          image: NetworkImage('https://i.ytimg.com/vi/9QNUXxuwt1Y/maxresdefault.jpg'),
          fit: BoxFit.fill,
        );
  }

  Widget _createTittle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lago y montañas', style: styleTittle,),
                  SizedBox(height: 7.0,),
                  Text('Montañas de los alphes', style: styleSubTittle,)
                ],
              ),
            ),

            Icon(Icons.star, color: Colors.red, size: 30.0,),
            Text('41')
          ],
        ),
      )
    );
  }

  Widget _createActions(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createAction(Icons.call, 'Call', context),
        _createAction(Icons.near_me, 'Route', context),
        _createAction(Icons.share, 'Share', context),
      ],
    );
  }

  Widget _createAction(IconData icon, String text, BuildContext context){
    return GestureDetector(
      onTap: ()=> Navigator.pushNamed(context, 'scroll'),
      child: Column(
        children: <Widget>[
          Icon(icon, color: Colors.blue, size: 40.0,),
          SizedBox(height: 5.0,),
          Text(text, style: TextStyle(fontSize: 15, color: Colors.blue),),
        ],
      ),
    );
  }

  Widget _createText(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'asdhasjdk hakjshdiakj sdkja skdjhaskjdhas dkjashdkjas dka sdkjhaskjdhas dkjasda skjdhask diuwhefiu ashgdafguyghsdaf soiudgfiuashf ashgdfuygsad fiua sdhgfuyagsdf aiudsgfuasdf  789a9yhdf ausdgf asdif78ashd f9ads8f usdauhfpas98 asd8fu a9sdfa8sdyf asjdfbuyufg98yds f sadghf98auysdf asdyf87syhdf98 aiuysgdf.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}