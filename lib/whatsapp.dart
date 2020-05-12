import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 16,
            backgroundColor: Colors.teal,
            actions: <Widget>[
              Icon(Icons.search),
              SizedBox(width: 24.0),
              Icon(Icons.menu),
              SizedBox(width: 16.0)
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(text: "CHATS"),
                Tab(text: "STATUS"),
                Tab(text: "CALLS"),
              ],
            ),
            title: Text("Whatsapp"),
          ),
          body: TabBarView(children: [
            Container(color: Colors.black),
            ChatList(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ]),
        ),
      );
}

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: 10,
      itemBuilder: (context, position) => InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(Icons.person),
                    backgroundColor: Colors.teal,
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Someone",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "Someone has sent you a message",
                          style: TextStyle(color: Colors.grey, fontSize: 18.0),
                        )
                      ],
                    ),
                  ),
                  Text("10:47 pm",
                      style: TextStyle(fontSize: 16, color: Colors.green)),
                ],
              ),
            ),
          ));
}
