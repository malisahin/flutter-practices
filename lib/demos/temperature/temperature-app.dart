import 'package:flutter/material.dart';

class TemperatureApp extends StatefulWidget {
  @override
  _TemperatureAppState createState() => _TemperatureAppState();
}

class _TemperatureAppState extends State<TemperatureApp> {
  double input;
  double output;
  bool fOrC;

  @override
  void initState() {
    super.initState();
    input = 0;
    output = 0;
    fOrC = true;
  }

  AppBar getAppBar() {
    return AppBar(
      title: Text(
        "Temperature Calculator",
      ),
    );
  }

  TextField getInputField() {
    TextField inputField = TextField(
      keyboardType: TextInputType.number,
      onChanged: (value) {
        try {
          input = double.parse(value);
        } catch (e) {
          input = 0;
        }
      },
      decoration: InputDecoration(
          labelText:
              "Input a value in ${fOrC == false ? "Fahrenheit" : "Celcius"}"),
    );

    return inputField;
  }

  Container getSwitch() {
    Container container = Container(
      child: Row(
        children: <Widget>[
          /*   Switch(
            value: fOrC,
            onChanged: (e) {
              setState(() {
                fOrC = !fOrC;
              });
            },
          )*/
          /*     Checkbox(
              value: fOrC,
              onChanged: (e) {
                setState(() {
                  fOrC = !fOrC;
                });
              })*/
          Text("F"),
          Radio<bool>(
            groupValue: fOrC,
            value: false,
            onChanged: (e) {
              fOrC = e;
              setState(() {
                fOrC = fOrC;
              });
            },
          ),
          Text("C"),
          Radio<bool>(
            groupValue: fOrC,
            value: true,
            onChanged: (e) {
              fOrC = e;
              setState(() {
                fOrC = fOrC;
              });
            },
          )
        ],
      ),
    );

    return container;
  }

  Container getCalculationButton() {
    Container calculationButton = Container(
      child: RaisedButton(
        onPressed: () {
          setState(() {
            output = !fOrC ? (input - 32) * (5 / 9) : (input * 9 / 5) + 32;
          });
          AlertDialog dialog = AlertDialog(
              content: fOrC == false
                  ? Text("$input F : $output C")
                  : Text("$input C : $output F"));
          showDialog(context: context, child: dialog);
        },
        child: Text("Calculate"),
      ),
    );
    return calculationButton;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            getInputField(),
            getSwitch(),
            getCalculationButton()
          ],
        ),
      ),
    );
  }
}
