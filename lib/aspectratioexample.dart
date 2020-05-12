import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.red,
          ),
        ),
      );
}
