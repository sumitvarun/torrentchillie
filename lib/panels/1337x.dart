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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Color.fromARGB(255, 0, 180, 39),
            )),
        backgroundColor: Colors.white,
        title: const Text(
          'Torrentchillie',
          style: TextStyle(
            //  color: Color.fromARGB(255, 0, 180, 39),
            color: Colors.black,
            fontSize: 18.0,
          ),
        ),
        // Add from here ...
        actions: [
          NavigationControls(controller: controller),
          Menu(controller: controller),
        ],
        // ... to here.
      ),
      body: WebViewStack(controller: controller),
    );
  }
}
