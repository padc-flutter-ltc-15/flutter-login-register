
import 'package:flutter/material.dart';

class WhiteTextInputWidget extends StatelessWidget {

  const WhiteTextInputWidget({Key? key, required this.hintName}) : super(key: key);

  final String hintName;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromRGBO(755, 755, 755, 1.0),
          hintText: hintName,
          hintStyle: const TextStyle(
              color: Colors.black
          )
      ),
      style: const TextStyle(
          color: Colors.black
      ),
    );
  }
}
