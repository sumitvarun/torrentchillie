import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CircleTorrentCard extends StatelessWidget {
  const CircleTorrentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Row(
            children: const <Widget>[
              Expanded(
                child: Circletorrbutton(
                    ccolor: Colors.white,
                    ctextColor: Colors.black,
                    ctitle: 'Top 100',
                    cimage:
                        'https://img.icons8.com/color/480/000000/filled-star--v2.gif'),
              ),
              Expanded(
                child: Circletorrbutton(
                    ccolor: Colors.white,
                    ctextColor: Colors.black,
                    ctitle: 'Trending',
                    cimage:
                        'https://img.icons8.com/color/480/000000/summer--v2.gif'),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Circletorrbutton extends StatelessWidget {
  const Circletorrbutton(
      {Key? key,
      required this.cimage,
      required this.ccolor,
      required this.ctextColor,
      required this.ctitle})
      : super(key: key);

  final String cimage;
  final Color ccolor;
  final String ctitle;
  final Color ctextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 100,
      decoration: BoxDecoration(
          color: ccolor,
          //borderRadius: BorderRadius.circular(50.0),
          shape: BoxShape.circle),
      child: Column(
        children: <Widget>[
          Expanded(child: Image(image: NetworkImage(cimage))),
          Expanded(
            child: Text(
              ctitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.sourceSansPro(
                color: ctextColor,
                fontWeight: FontWeight.w500,
                fontSize: 22.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
