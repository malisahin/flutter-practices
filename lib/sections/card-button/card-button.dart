import 'package:flutter/material.dart';

class CardButtonDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CardButtonDemo());
  }
}

class CardButtonDemo extends StatefulWidget {
  @override
  _CardButtonDemoState createState() => _CardButtonDemoState();
}

class _CardButtonDemoState extends State<CardButtonDemo> {
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            children: <Widget>[_getLeftCard(), _getMainCard(), _getRightCard()],
          ),
          SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: FlatButton(onPressed: () {}, child: Icon(Icons.clear)),
              ),
              Expanded(
                child: FlatButton(
                    onPressed: () {}, child: Icon(Icons.insert_comment)),
              ),
              Expanded(
                child: FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _getMainCard() {
    return Container(
      padding: EdgeInsets.only(left: width * 0.1, right: width * 0.1),
      width: width * 0.8,
      height: height * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage('assets/footbal1.jpg'), fit: BoxFit.cover)),
    );
  }

  Container _getLeftCard() {
    return Container(
      padding: new EdgeInsets.only(left: 0),
      width: width * 0.8,
      height: height * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage('assets/white-tshirt.jpg'), fit: BoxFit.cover)),
    );
  }

  Container _getRightCard() {
    return Container(
      padding: new EdgeInsets.only(right: 0),
      width: width * 0.8,
      height: height * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage('assets/white-tshirt.jpg'), fit: BoxFit.cover)),
    );
  }
}
