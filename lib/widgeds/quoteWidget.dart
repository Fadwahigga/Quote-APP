// ignore_for_file: file_names, camel_case_types, must_be_immutable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class quoteWidget extends StatelessWidget {
  var quote = "";
  var authoe = "";
  var onShareClick;
  var onLikeClick;
  var pgColor;
  quoteWidget(
      {required this.quote,
      required this.authoe,
      this.onLikeClick,
      this.onShareClick,
      this.pgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pgColor,
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(
            flex: 2,
          ),
          Image.asset(
            "images/quote.png",
            width: 30,
            height: 30,
            color: Colors.white,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            quote,
            style: GoogleFonts.lato(
                textStyle: const TextStyle(color: Colors.white, fontSize: 30)),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            authoe,
            style: GoogleFonts.lato(
                textStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          const Spacer(),
          Container(
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    onLikeClick;
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.white)),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onShareClick;
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.white)),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
