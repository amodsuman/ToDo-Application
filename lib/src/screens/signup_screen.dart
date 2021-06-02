import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo/src/screens/privacy_policies.dart';
import 'package:todo/src/screens/terms_and_conditions.dart';
import 'package:todo/src/widgets/backgroundImage.dart';
import 'package:todo/src/widgets/name_input.dart';
import 'package:todo/src/widgets/phone_input.dart';
import 'package:todo/src/widgets/email_input.dart';
import 'package:todo/src/widgets/password_input.dart';
import 'package:todo/src/widgets/checkbox.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

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
                child: signUpForm(),
              ),
            ), // body:
          ),
          // logInBar(context),
        ],
      ),
    );
  }

  signUpForm() {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _signUpHeader(),
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
          _termsAndConditions(),
          SizedBox(
            height: 28,
          ),
          _signUpButton(),
        ],
      ),
    );
  }

  Row _signUpHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Sign Up",
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
            'Log In',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          // onPressed: () {
          //   Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          //     return LogInScreen();
          //   }));
          // },
        )
      ],
    );
  }

  Row _termsAndConditions() {
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
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      //   return TermsAndConditions();
                      // }));
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
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      //   return PrivacyPolicy();
                      // }));
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

  Container _signUpButton() {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(16),
          primary: Colors.blue,
        ),
        onPressed: () {},
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
