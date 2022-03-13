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
        title: const Text('Torrentchillie'),
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
