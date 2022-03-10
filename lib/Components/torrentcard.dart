import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TorrentCard extends StatelessWidget {
  const TorrentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: const Color(0xff515A5A),
            borderRadius: BorderRadius.circular(40.0)),
        child: Column(
          children: <Widget>[
            Row(
              children: const <Widget>[
                Expanded(
                  child: Torrentcardbutton(
                      image:
                          'https://upload.wikimedia.org/wikipedia/en/9/9b/Kickasstorrentslogo.png',
                      color: Color(0xffE9E8E7),
                      title: 'Kickass Torrent',
                      textColor: Colors.black),
                ),
                Expanded(
                  child: Torrentcardbutton(
                      image:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/1337X_logo.svg/1280px-1337X_logo.svg.png',
                      color: Color(0xffE9E8E7),
                      title: '1337x',
                      textColor: Colors.black),
                ),
                Expanded(
                  child: Torrentcardbutton(
                      image:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/The_Pirate_Bay_logo.svg/800px-The_Pirate_Bay_logo.svg.png',
                      color: Color(0xffE9E8E7),
                      title: 'The Pirate Bay',
                      textColor: Colors.black),
                ),
                Expanded(
                  child: Torrentcardbutton(
                      image:
                          'https://img.icons8.com/color/48/000000/utorrent.png',
                      color: Color(0xffE9E8E7),
                      title: 'Torrentz2',
                      textColor: Colors.black),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                Expanded(
                  child: Torrentcardbutton(
                      image:
                          'https://upload.wikimedia.org/wikipedia/commons/0/0d/RARBG_Logo.png',
                      color: Color(0xffE9E8E7),
                      title: 'RARBG',
                      textColor: Colors.black),
                ),
                Expanded(
                  child: Torrentcardbutton(
                      image:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Logo-YTS.svg/1280px-Logo-YTS.svg.png',
                      color: Color(0xffE9E8E7),
                      title: 'YTS',
                      textColor: Colors.black),
                ),
              ],
            )
          ],
        ),
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
          color: color, borderRadius: BorderRadius.circular(50.0)),
      child: Column(
        children: <Widget>[
          Expanded(child: Image(image: NetworkImage(image))),
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.sourceSansPro(
                color: textColor,
                fontWeight: FontWeight.w500,
                fontSize: 15.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
