import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({Key key}) : super(key: key);

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.cyan.shade600,
          ),
        ),
        labelText: "Password",
        border: OutlineInputBorder(),
        prefixIcon: IconButton(
          icon: Icon(Icons.lock),
        ),
        suffixIcon: IconButton(
          icon: Icon(Icons.visibility),
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
        ),
      ),
    );
  }
}
