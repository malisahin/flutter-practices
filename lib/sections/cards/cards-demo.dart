import 'package:flutter/material.dart';

class CardsDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cards Example",
      home: CardsDemo(),
    );
  }
}

class CardsDemo extends StatefulWidget {
  @override
  _CardsDemoState createState() => _CardsDemoState();
}

class _CardsDemoState extends State<CardsDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: _getBody(),
    );
  }

  AppBar _getAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {}),
      title: Text(
        'Near by',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 8),
          child: FlutterLogo(
            colors: Colors.blue,
            size: 40,
          ),
        )
      ],
    );
  }

  Column _getBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              _getTopCards(10, 260, Colors.amber),
              _getTopCards(10, 280, Colors.blue),
              _getMainCard(),
              _getInfoCard()
            ],
          ),
        )
      ],
    );
  }

  Positioned _getTopCards(double left, double width, Color color) {
    return Positioned(
      left: left,
      child: Container(
        width: width,
        height: 400,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Container _getMainCard() {
    return Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage('assets/white-tshirt.jpg'), fit: BoxFit.cover)),
    );
  }

  Positioned _getInfoCard() {
    return Positioned(
      top: 340,
      left: 15,
      child: Container(
        width: 270,
        height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 1, color: Colors.black12, spreadRadius: 2)
            ]),
        child: Container(
          padding: EdgeInsets.all(7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'White Tshirt',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20),
                  ),
                  SizedBox(width: 4),
                  Image.asset(
                    'assets/heart.jpg',
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Koton 50TL',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
