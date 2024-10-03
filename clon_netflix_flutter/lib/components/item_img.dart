import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  const ItemImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            "https://th.bing.com/th/id/OIP.UxDK_0WaNacQ8FtC5Z2kQQHaLH?rs=1&pid=ImgDetMain",
          width: 160,
          height: 610,
          fit: BoxFit.cover,
          ),
        ),
    ],);
  }
}