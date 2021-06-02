import 'package:flutter/material.dart';

class NameInput extends StatelessWidget {
  const NameInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Full Name",
        hintText: "Amod Suman",
        border: OutlineInputBorder(),
        prefixIcon: IconButton(
          icon: Icon(Icons.account_box),
        ),
      ),
    );
  }
}
