import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:system_shortcuts/system_shortcuts.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.black,
      secondaryHeaderColor: Colors.red,
      fontFamily: 'Bungee',
      primaryTextTheme: TextTheme(
        title: TextStyle(color: Colors.yellow),
      ),
    )));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: AfterSplash(),
      image: new Image.asset(
        'assets/images/icon.png',
        width: 100,
        height: 100,
      ),
      backgroundColor: Colors.blueAccent,
      photoSize: 100.0,
    );
  }
}

class AfterSplash extends StatefulWidget {
  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<AfterSplash> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(title: Text("Crypto Signals"), actions: <Widget>[
        // action button
        IconButton(
            icon: Icon(Icons.screen_rotation),
            onPressed: () async {
              await SystemShortcuts.orientLandscape();
              SystemShortcuts.orientPortrait();
            }),
      ]),
      url: "http://crypto.slamtrade.com/",
      withJavascript: true,
      withZoom: true,
    );
  }
}
