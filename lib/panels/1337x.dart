import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:torrentchillie/Components/menu.dart';
import 'package:torrentchillie/Components/navigation_controls.dart';
import 'package:torrentchillie/Components/webview_stack.dart';
import 'package:torrentchillie/screens/homepage.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'dart:io';

class WebViewClass extends StatefulWidget {
  const WebViewClass({Key? key}) : super(key: key);

  @override
  _WebViewClassState createState() => _WebViewClassState();
}

class _WebViewClassState extends State<WebViewClass> {
  final controller = Completer<WebViewController>();

  @override
  void initState() {
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      systemNavigationBarColor: Colors.white,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.white,
    )); //Change App Statusbar style :  Status Bar | Bottom Navigation Bar Color | Statusbar text color
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CupertinoSliverNavigationBar(
              leading: CupertinoButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      NavigationControls(controller: controller),
                      Menu(controller: controller),
                    ],
                  ) //NavigationControls(controller: controller),
                  ),
              trailing: CupertinoButton(
                alignment: Alignment.centerRight,
                onPressed: () {},
                child: const Icon(
                  Icons.search,
                  color: Color(0xff43FE02),
                ),
              ),

              //----------------------------------------
              backgroundColor: Colors.white,
              largeTitle: Text(
                'torrentchillie',
                style: GoogleFonts.sourceSansPro(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 28.0,
                ),
              ),
              //middle: Text(
              // ' A Covid19 Tracker Application',
              //style: GoogleFonts.exo2(color: Colors.black),
              // ),
            )
          ];
        },
        body: WebViewStack(controller: controller),
      ),
    );
  }
}
