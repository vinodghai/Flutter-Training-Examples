import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'album.dart';

class NetworkingWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NetworkingState();
}

class NetworkingState extends State<NetworkingWidget> {
  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = Networking().fetchAlbum();
  }

  @override
  Widget build(BuildContext context) => FutureBuilder<Album>(
      future: futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data.title);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }

        return CircularProgressIndicator();
      });
}

class Networking {
  Future<Album> fetchAlbum() async {
    final response =
        await http.get("https://jsonplaceholder.typicode.com/albums/1");

    if (response.statusCode == 200) {
      return Album.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to load album");
    }
  }
}
