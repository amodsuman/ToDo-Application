import 'package:flutter/material.dart';

class NameInput extends StatelessWidget {
  const NameInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.cyan.shade600,
          ),
        ),
        labelText: "Full Name",
        border: OutlineInputBorder(),
        prefixIcon: IconButton(
          icon: Icon(Icons.account_box),
        ),
      ),
    );
  }
}
