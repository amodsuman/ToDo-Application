import 'package:flutter/material.dart';

class PhoneInput extends StatelessWidget {
  const PhoneInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Phone No.",
        hintText: "9123456789",
        border: OutlineInputBorder(),
        prefixIcon: IconButton(
          icon: Icon(Icons.phone),
        ),
      ),
    );
  }
}
