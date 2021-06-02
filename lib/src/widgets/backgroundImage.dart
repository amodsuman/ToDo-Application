import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/todo-image.jpg",
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }
}
