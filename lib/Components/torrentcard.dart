import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:torrentchillie/panels/1337x.dart';
import 'package:torrentchillie/panels/kickasstorrent.dart';
import 'package:torrentchillie/panels/piratebay.dart';
import 'package:torrentchillie/panels/rarbg.dart';
import 'package:torrentchillie/panels/torrentz.dart';
import 'package:torrentchillie/panels/yts.dart';

class TorrentCard extends StatelessWidget {
  const TorrentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 114, 252, 2),
            borderRadius: BorderRadius.circular(40.0)),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const KickassTorrent()),
                      );
                    },
                    child: const Torrentcardbutton(
                        image: 'lib/assets/torrentcard/Kickasstorrentslogo.png',
                        color: Colors.white,
                        title: 'Kickass Torrent',
                        textColor: Colors.black),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WebViewClass()),
                      );
                    },
                    child: const Torrentcardbutton(
                        image:
                            'lib/assets/torrentcard/1280px-1337X_logo.svg.png',
                        color: Colors.white,
                        title: '1337x',
                        textColor: Colors.black),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PirateBay()),
                      );
                    },
                    child: const Torrentcardbutton(
                        image:
                            'lib/assets/torrentcard/800px-The_Pirate_Bay_logo.svg.png',
                        color: Colors.white,
                        title: 'The Pirate Bay',
                        textColor: Colors.black),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Torrentz()),
                      );
                    },
                    child: const Torrentcardbutton(
                        image: 'lib/assets/torrentcard/icons8-utorrent-480.png',
                        color: Colors.white,
                        title: 'Torrentz2',
                        textColor: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RarBg()),
                      );
                    },
                    child: const Torrentcardbutton(
                        image: 'lib/assets/torrentcard/RARBG_Logo.png',
                        color: Colors.white,
                        title: 'RARBG',
                        textColor: Colors.black),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Yts()),
                      );
                    },
                    child: const Torrentcardbutton(
                        image: 'lib/assets/torrentcard/2560px-Logo-YTS.svg.png',
                        color: Colors.white,
                        title: 'YTS',
                        textColor: Colors.black),
                  ),
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
          Expanded(child: Image(image: AssetImage(image))),
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
