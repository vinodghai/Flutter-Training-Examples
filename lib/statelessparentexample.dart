import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatelessParentExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      LayoutBuilder(
        builder: (context, constraints) =>
            Column(
              children: <Widget>[
                Container(
                  height: constraints.maxHeight / 2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: FittedBox(child: Icon(Icons.camera_alt))),
                      Expanded(child: FittedBox(child: Icon(Icons.image)))
                    ],
                  ),
                ),
                Container(
                  height: constraints.maxHeight / 2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: FittedBox(child: RaisedButton(
                        onPressed: () {},
                        child: Text("This text color \nis changeable",
                            textAlign: TextAlign.center),
                      )))
                    ],
                  ),
                )
              ],
            ),
      );
}

class ColorHolder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ColorHolderState();
}

class ColorHolderState extends State<ColorHolder> {
  Color color;

  @override
  Widget build(BuildContext context) =>
      RaisedButton(
        onPressed: () {
          setState(() {
            this.color =
            Colors.primaries[Random().nextInt(Colors.primaries.length)];
          });
        },
        child: Text("This text color \nis changeable",
            textAlign: TextAlign.center, style: TextStyle(color: this.color)),
      );
}
