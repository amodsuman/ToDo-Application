import 'package:flutter/material.dart';

class TodoBackgroundImage extends StatelessWidget {
  const TodoBackgroundImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/todo-image1.jpg",
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }
}
