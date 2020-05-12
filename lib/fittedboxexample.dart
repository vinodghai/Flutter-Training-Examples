import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          //width: 300,
          //height: 300,
          child: FittedBox(
            child: Text("VentureDive"),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              shape: BoxShape.rectangle,
              color: Colors.redAccent),
        ),
      );
}
