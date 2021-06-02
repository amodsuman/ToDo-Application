import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({Key key}) : super(key: key);

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool checkbox1 = true;


  @override
  Widget build(BuildContext context) {
    return
      Checkbox(
        value: true,
        activeColor:Color(0xFFFFC107),
        tristate: false,
        onChanged: (value) {
          //value may be true or false
          setState(() {
            checkbox1 = !checkbox1;
          });
        },
      );
  }
}
