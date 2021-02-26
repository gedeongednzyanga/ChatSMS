import 'package:ChatSMS/screens/splash_screen.dart';
import 'package:ChatSMS/screens/write_message.dart';
import 'package:ChatSMS/screens/read_message.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat SMS',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        accentColor: Colors.white54,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: <String, WidgetBuilder>{
        "screens/write_message": (BuildContext context) => new WriteMessage(),
        "screens/read_message": (BuildContext context) => new ReadMessage(),
      },
      home: SplashScreen(),
    );
  }
}
