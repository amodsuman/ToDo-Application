import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo/src/screens/forgot_password.dart';
import 'package:todo/src/screens/signup_screen.dart';
import 'package:todo/src/widgets/backgroundImage.dart';
import 'package:todo/src/widgets/email_input.dart';
import 'package:todo/src/widgets/password_input.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool obscureText = true;
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          BackgroundImage(),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.height / 2) - 170),
                padding: EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: logInForm(),
              ),
            ), // body:
          ),
        ],
      ),
    );
  }
}

Form logInForm() {
  return Form(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _logInHeader(),
        SizedBox(
          height: 28,
        ),
        EmailInput(),
        SizedBox(
          height: 28,
        ),
        PasswordInput(),
        SizedBox(
          height: 10,
        ),
        _forgotPassword(),
        SizedBox(
          height: 28,
        ),
        _logInButton(),
      ],
    ),
  );
}

Row _logInHeader() {
  return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Log In",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          MaterialButton(
            shape: const StadiumBorder(),
            textColor: Colors.white,
            color: Colors.grey,
            splashColor: Colors.grey.shade700,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.white,
            child: Text(
              'Sign Up',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            // onPressed: () {
            //   Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            //     return SignUpScreen();
            //   }));
            // },
          )
        ],
      );
}

Row _forgotPassword() {
  return Row(
    children: [
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: 'Forgot your password ?',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    //   return ForgotPassword();
                    // }));
                  }),
          ],
        ),
      )
    ],
  );
}

Container _logInButton() {
  return Container(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(16),
        primary: Colors.blue,
      ),
      onPressed: () {},
      child: Text(
        "Log In",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
