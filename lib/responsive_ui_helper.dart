import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    TextStyle style = TextStyle(fontSize: 18.0);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Orientation = ${data.orientation}", style: style),
          Text("Width = ${data.size.width}", style: style),
          Text("Height = ${data.size.height}", style: style),
          Text("DevicePixelRatio = ${data.devicePixelRatio}", style: style),
          Text("TextScaleFactor = ${data.textScaleFactor}", style: style),
          Text("PhysicalDepth = ${data.physicalDepth}", style: style),
          Text("ViewInsects = ${data.viewInsets}", style: style),
          Text("Padding = ${data.padding}", style: style),
          Text("ViewPadding = ${data.viewPadding}", style: style),
          Text("HightContrast = ${data.highContrast}", style: style),
          Text("InvertColors = ${data.invertColors}", style: style),
          Text("BoldText = ${data.boldText}", style: style),
          Text("DisableAnimation = ${data.disableAnimations}", style: style),
          Text("PlatformBrightness = ${data.platformBrightness}", style: style),
          Text("AlwaysUse24HoursFormat = ${data.alwaysUse24HourFormat}",
              style: style),
        ],
      ),
    );
  }
}

//Usage
//Scaffold(body: MediaQueryExample())
