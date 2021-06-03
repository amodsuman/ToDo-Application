import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo/src/screens/login_screen.dart';
import 'package:todo/src/widgets/backgroundImage.dart';
import 'package:todo/src/widgets/name_input.dart';
import 'package:todo/src/widgets/phone_input.dart';
import 'package:todo/src/widgets/email_input.dart';
import 'package:todo/src/widgets/password_input.dart';
import 'package:todo/src/screens/terms_and_conditions.dart';
import 'package:todo/src/screens/privacy_policies.dart';
import 'package:todo/src/widgets/checkbox.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

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
                child: signUpForm(context),
              ),
            ), // body:
          ),
          // logInBar(context),
        ],
      ),
    );
  }

  signUpForm(context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _signUpHeader(context),
          SizedBox(
            height: 28,
          ),
          NameInput(),
          SizedBox(
            height: 28,
          ),
          PhoneInput(),
          SizedBox(
            height: 28,
          ),
          EmailInput(),
          SizedBox(
            height: 28,
          ),
          PasswordInput(),
          SizedBox(
            height: 28,
          ),
          _termsAndConditions(context),
          SizedBox(
            height: 28,
          ),
          _signUpButton(context),
        ],
      ),
    );
  }

  Column _signUpHeader(context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Sign Up",
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
                    return LogInScreen();
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
            )
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

  Row _termsAndConditions(context) {
    return Row(
      children: [
        // Checkbox(),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: 'Agree',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                  )),
              TextSpan(
                  text: ' Terms & Conditions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan.shade600,
                    fontSize: 14,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return TermsAndConditions();
                      }));
                    }),
              TextSpan(
                  text: ' and',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                  )),
              TextSpan(
                  text: " Privacy Policy",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan.shade600,
                    fontSize: 14,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return PrivacyPolicies();
                      }));
                    }),
              TextSpan(
                  text: '.',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                  ))
            ],
          ),
        )
      ],
    );
  }

  Container _signUpButton(context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(16),
          primary: Colors.cyan.shade600,
        ),
        onPressed: () {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: Text(
                'Congratulations!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan.shade600,
                ),
              ),
              content: const Text(
                  'You have been registered successfully. Please log in to continue.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return LogInScreen();
                    }));
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan.shade600,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        child: Text(
          "Sign In",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
