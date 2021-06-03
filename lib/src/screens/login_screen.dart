import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo/src/widgets/backgroundImage.dart';
import 'package:todo/src/screens/signup_screen.dart';
import 'package:todo/src/widgets/email_input.dart';
import 'package:todo/src/widgets/password_input.dart';
import 'package:todo/src/screens/forgot_password.dart';
import 'package:todo/src/screens/welcome_screen.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                child: logInForm(context),
              ),
            ), // body:
          ),
        ],
      ),
    );
  }
}

Form logInForm(context) {
  return Form(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _logInHeader(context),
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
        _forgotPassword(context),
        SizedBox(
          height: 28,
        ),
        _logInButton(context),
      ],
    ),
  );
}

Column _logInHeader(context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Log In",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 90,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10),
                primary: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return SignUpScreen();
                }));
              },
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Divider(
        thickness: 1.2,
        color: Colors.grey.shade500,
      ),
    ],
  );
}

Row _forgotPassword(context) {
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
                color: Colors.cyan.shade600,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) {
                        return ForgotPassword();
                      },
                    ),
                  );
                },
            ),
          ],
        ),
      )
    ],
  );
}

Container _logInButton(context) {
  return Container(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(16),
        primary: Colors.cyan.shade600,
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return WelcomeScreen();
        }));
      },
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
