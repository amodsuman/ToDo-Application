import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.cyan.shade600,
          ),
        ),
        labelText: "Email",
        border: OutlineInputBorder(),
        prefixIcon: IconButton(
          icon: Icon(Icons.email),
        ),
      ),
    );
  }
}
