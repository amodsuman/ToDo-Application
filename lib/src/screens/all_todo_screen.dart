import 'package:flutter/material.dart';

class AllTodoScreen extends StatelessWidget {
  const AllTodoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Tasks"),
        backgroundColor: Colors.cyan.shade600,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
            ],
          ),
        ),
      ), // body:
    );
  }
}
