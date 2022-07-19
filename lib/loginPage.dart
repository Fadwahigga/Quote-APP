// ignore_for_file: file_names, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 3),
            Text(
              "Hello,",
              style: GoogleFonts.lato(
                  textStyle:
                      const TextStyle(color: Colors.black, fontSize: 22)),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Welcome to Quote!",
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Mobile Number"),
            ),
            const Spacer(),
            Container(
                width: double.infinity,
                color: Colors.black,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("homepage");
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  child: const Text("Continue", style: TextStyle(fontSize: 30)),
                )),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
