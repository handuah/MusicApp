import 'package:flutter/material.dart';
import 'package:music_app/screens/login.dart';
import 'package:music_app/screens/mainPageContainer.dart';
import 'package:music_app/screens/signup.dart';
import 'package:music_app/screens/startScreen.dart';
import 'package:music_app/screens/welcomeScreen.dart';

void main() {
  runApp(MusicApp());
}

class MusicApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/welcomeScreen': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => MainPageContainer(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartScreen(),
    );
  }
}
