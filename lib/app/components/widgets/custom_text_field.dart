import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final InputDecoration decoration;

  const CustomTextField({
    Key? key,
    required this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(border: OutlineInputBorder()),
    );
  }
}
