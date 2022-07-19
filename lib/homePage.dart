// ignore_for_file: file_names, camel_case_types, avoid_unnecessary_containers

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:quote_app/widgeds/quoteWidget.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  var apiURL = "https://type.fit/api/quotes";

  Future<List<dynamic>> getPost() async {
    final response = await http.get(Uri.parse(apiURL));
    return postFromJson(response.body);
  }

  List<dynamic> postFromJson(String str) {
    List<dynamic> jsonData = json.decode(str);
    jsonData.shuffle();
    return jsonData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<dynamic>>(
          future: getPost(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Stack(
                children: [
                  PageView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        var model = snapshot.data![index];
                        return quoteWidget(
                            quote: model["text"].toString(),
                            authoe: model["author"].toString(),
                            onShareClick: () {},
                            onLikeClick: () {},
                            pgColor: Colors.blue);
                      }),
                ],
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
      /*body: PageView(children: [
      quoteWidget(
        quote:
            "Don't let the nocise of others' opinions drown out your own inner voic",
        authoe: "Steve jobs",
        pgColor: Colors.blue,
        onLikeClick: () {},
        onShareClick: () {},
      ),
      quoteWidget(
        quote:
            "Don't let the nocise of others' opinions drown out your own inner voic",
        authoe: "Steve jobs",
        pgColor: Colors.green,
        onLikeClick: () {},
        onShareClick: () {},
      )
    ])*/
    );
  }
}
