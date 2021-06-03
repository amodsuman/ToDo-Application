import 'package:flutter/material.dart';

class PhoneInput extends StatelessWidget {
  const PhoneInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.cyan.shade600,
          ),
        ),
        labelText: "Phone No.",
        border: OutlineInputBorder(),
        prefixText: "+977",
        prefixStyle: TextStyle(
          color: Colors.black,
          fontSize: 15
        ),
        prefixIcon: IconButton(
          icon: Icon(Icons.phone),
        ),
      ),
    );
  }
}
