import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final Icon icon;
  final Text text;

  const UserProfile(this.icon, this.text);

  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          icon,
          Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: text,
          )
        ],
      );
}

//Usage
//UserProfile(Icon(Icons.person, size: 28,), Text("User", style: TextStyle(fontSize: 28),))
