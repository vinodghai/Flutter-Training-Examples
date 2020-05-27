import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/aspectratioexample.dart';
import 'package:flutterapp/expandedexample.dart';
import 'package:flutterapp/responsive.dart';
import 'package:flutterapp/responsive_ui_helper.dart';
import 'package:flutterapp/reusable.dart';
import 'package:flutterapp/statelessparentexample.dart';
import 'package:flutterapp/whatsapp.dart';

import 'fittedboxexample.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: Scaffold(body: MediaQueryExample())),
    );
  }
}
