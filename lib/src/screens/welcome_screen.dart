import 'package:flutter/material.dart';
import 'package:todo/src/widgets/todoBackgroundImage.dart';
import 'package:todo/src/widgets/todo-logo.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        TodoBackgroundImage(),
        Scaffold(
          backgroundColor: Color(0x651F1F1F),
          body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 160,
                    child: TodoLogo(),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  welcomeText(),
                  nameText(),
                  SizedBox(
                    height: 36,
                  ),
                  circularProgressIndicator(),
                  SizedBox(
                    height: 36,
                  ),
                ],
              ),
            ),
          ), // body:
        ),
      ],
    );
  }

  Text welcomeText() {
    return Text(
      "Welcome",
      style: TextStyle(
        color: Colors.white60,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );
  }

  Text nameText() {
    return Text(
      "Amod Suman",
      style: TextStyle(
        color: Colors.cyan.shade600,
        fontWeight: FontWeight.bold,
        fontSize: 40,
      ),
    );
  }

  SizedBox circularProgressIndicator() {
    return SizedBox(
      height: 24,
      width: 24,
      child: CircularProgressIndicator(
        backgroundColor: Colors.white60,
      ),
    );
  }
}
