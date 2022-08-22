import 'dart:io';

import 'package:flutter/material.dart';

class Userprofilescreen extends StatefulWidget {
  Userprofilescreen({Key? key}) : super(key: key);

  @override
  State<Userprofilescreen> createState() => _UserprofilescreenState();
}

class _UserprofilescreenState extends State<Userprofilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Center(
        child: Row(
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Color(0xffF35383),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    15,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset(
                      'images/ftm.jpg',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'فاطمه عباس نژاد',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'SM',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'developr | FTM',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'أGB',
                      color: Colors.white,
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
