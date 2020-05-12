import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          Container(
            width: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            color: Colors.blue,
          ),
          Container(
            width: 100,
            color: Colors.green,
          )
        ],
      );
}
