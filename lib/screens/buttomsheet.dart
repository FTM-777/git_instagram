import 'dart:ui';

import 'package:flutter/material.dart';

class Buttomsheet extends StatelessWidget {
  const Buttomsheet(this.controller, {Key? key}) : super(key: key);
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 40.0,
          sigmaY: 40.0,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Color.fromRGBO(255, 255, 255, 0.09),
          child: _getgridecontant(),
        ),
      ),
    );
  }

  Widget _getgridecontant() {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        CustomScrollView(
          controller: controller,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 22,
                    ),
                    child: Container(
                      width: 67,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          100,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Share',
                        style: TextStyle(
                          fontFamily: 'GB',
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Image.asset('images/icon_share_bottomsheet.png'),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    width: 340,
                    height: 46,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.4),
                      borderRadius: BorderRadius.circular(
                        13,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/icon_search.png'),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'search..',
                              hintStyle: TextStyle(color: Colors.white),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return _getgridecontainer();
                },
                childCount: 100,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                mainAxisExtent: 110,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                bottom: 90,
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 46,
          child: ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 13),
              child: Text(
                'Send',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'GB',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getgridecontainer() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 60,
            height: 60,
            child: Image.asset('images/profile.png'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Amirahmadadibi',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'GB',
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
