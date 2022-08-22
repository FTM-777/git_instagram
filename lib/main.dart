import 'package:flutter/material.dart';
import 'package:flutter_instagram/screens/Switch_account..dart';
import 'package:flutter_instagram/screens/activity_screen.dart';
import 'package:flutter_instagram/screens/buttomsheet.dart';
import 'package:flutter_instagram/screens/homescreen.dart';
import 'package:flutter_instagram/screens/login_screen.dart';
import 'package:flutter_instagram/screens/search_screen.dart';
import 'package:flutter_instagram/screens/add_content_screen.dart';
import 'package:flutter_instagram/screens/user_profile_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline4: TextStyle(
            fontFamily: 'GB',
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color(0xffF35383),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: ActivityScreen(),
    );
  }
}

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          repeat: ImageRepeat.repeat,
          image: AssetImage('images/pattern1.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Center(
                child: Image(
                  image: AssetImage('images/logo_splash.png'),
                ),
              ),
            ),
            Positioned(
              bottom: 32,
              child: Column(
                children: [
                  Text(
                    'from',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Abbasnezhad',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
