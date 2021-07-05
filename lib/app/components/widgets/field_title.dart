import 'package:flutter/material.dart';

class FieldTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const FieldTitle({Key? key, required this.title, required this.subtitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16, left: 3.0, bottom: 4.0),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.end,
        children: [
          Text(
            '$title            ',
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
                fontWeight: FontWeight.w700),
          ),
          Text(
            '$subtitle',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
