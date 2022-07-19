// ignore_for_file: file_names, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class inputPage extends StatelessWidget {
  const inputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = 80;
    double width = 80;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: height,
            width: width,
          ),
          Image.asset(
            "images/quote.png",
            height: 30,
            width: 30,
          ),
          SizedBox(
            height: height,
            width: width,
          ),
          Text("  Get",
              style: GoogleFonts.lato(
                  textStyle:
                      const TextStyle(fontSize: 50, color: Colors.black))),
          Text("  Inspired",
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold))),
          const SizedBox(
            width: 200,
            height: 200,
          ),
          Container(
              width: double.infinity,
              color: Colors.black,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("loginpage");
                },
                style: ElevatedButton.styleFrom(primary: Colors.black),
                child: const Text(
                  "Let's Go",
                  style: TextStyle(fontSize: 30),
                ),
              )),
        ]),
      ),
    );
  }
}
