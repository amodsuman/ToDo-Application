import 'package:flutter/material.dart';
import 'package:todo/src/screens/login_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ToDo App",
      theme: ThemeData.light(),
      home: LogInScreen(),
    );
  }
}
