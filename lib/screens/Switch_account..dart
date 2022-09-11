import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram/screens/homescreen.dart';
import 'package:flutter_instagram/screens/login_screen.dart';
import 'package:flutter_instagram/screens/main_screen.dart';

class Switchaccount extends StatefulWidget {
  const Switchaccount({Key? key}) : super(key: key);

  @override
  State<Switchaccount> createState() => _SwitchaccountState();
}

class _SwitchaccountState extends State<Switchaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c1f2e),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('images/switch_account_background.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 200,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 3.0,
                        sigmaY: 3.0,
                      ),
                      child: Container(
                        width: 340,
                        height: 352,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2),
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 32,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                height: 150,
                                child: Image.asset('images/ftm.jpg'),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'fatemeh abbasnezhad',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 46,
                              width: 129,
                              child: ElevatedButton(
                                style:
                                    Theme.of(context).elevatedButtonTheme.style,
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return Login_screen();
                                    }),
                                  );
                                },
                                child: Text(
                                  'Confirm',
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Text(
                              'switch account',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 63, top: 132),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account ? / ',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                    fontFamily: 'GB',
                  ),
                ),
                Text(
                  'sign up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'GB',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
