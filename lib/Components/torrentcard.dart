import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TorrentCard extends StatelessWidget {
  const TorrentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Row(
            children: const <Widget>[
              Expanded(
                child: Torrentcardbutton(
                    image:
                        'https://upload.wikimedia.org/wikipedia/en/9/9b/Kickasstorrentslogo.png',
                    color: Colors.amber,
                    title: 'Kickass Torrent',
                    textColor: Colors.black),
              ),
              Expanded(
                child: Torrentcardbutton(
                    image:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/1337X_logo.svg/1280px-1337X_logo.svg.png',
                    color: Colors.orange,
                    title: '1337x',
                    textColor: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Torrentcardbutton extends StatelessWidget {
  const Torrentcardbutton(
      {Key? key,
      required this.image,
      required this.color,
      required this.title,
      required this.textColor})
      : super(key: key);
  final String image;
  final Color color;
  final String title;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 100,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          Expanded(child: Image(image: NetworkImage(image))),
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.sourceSansPro(
                color: textColor,
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
