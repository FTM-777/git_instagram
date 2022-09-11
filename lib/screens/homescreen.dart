import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_instagram/screens/buttomsheet.dart';

class Homescreen extends StatelessWidget {
  Homescreen(this.context, {Key? key}) : super(key: key);

  var context;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1C1F2E),
        title: Container(
          width: 128,
          height: 24,
          child: Image.asset('images/moodinger_logo.png'),
        ),
        actions: [
          Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.only(
              right: 10,
            ),
            child: Image.asset('images/icon_direct.png'),
          ),
        ],
      ),
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _getstory(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 45,
                        child: _getheader(),
                      ),
                      SizedBox(
                        height: 500,
                        child: _getpostview(8),
                      ),
                      SizedBox(
                        height: 45,
                        child: _getheader(),
                      ),
                      SizedBox(
                        height: 500,
                        child: _getpostview(5),
                      ),
                      SizedBox(
                        height: 45,
                        child: _getheader(),
                      ),
                      SizedBox(
                        height: 500,
                        child: _getpostview(9),
                      ),
                      SizedBox(
                        height: 45,
                        child: _getheader(),
                      ),
                      SizedBox(
                        height: 500,
                        child: _getpostview(7),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getstory() {
    return Container(
      height: 120,
      child: ListView.builder(
        itemCount: 15,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return index == 0
              ? _getaddstorybox()
              : index == 1
                  ? _getfalowing(1)
                  : index == 2
                      ? _getfalowing(2)
                      : index == 3
                          ? _getfalowing(3)
                          : index == 4
                              ? _getfalowing(8)
                              : index == 5
                                  ? _getfalowing(5)
                                  : _getfalowing(3);
        },
      ),
    );
  }

  Widget _getpostview(int image) {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 5, 0, 22),
        width: 394,
        height: 440,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Positioned(
              top: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 470,
                  child: Image.asset('images/$image.png'),
                ),
              ),
            ),
            Positioned(
              top: 15,
              right: 15,
              child: Image.asset('images/icon_video.png'),
            ),
            Positioned(
              bottom: 15,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
                  child: Container(
                    width: 340,
                    height: 46,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.5),
                          Color.fromRGBO(255, 255, 255, 0.2),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.asset('images/icon_hart.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text(
                                '2.6 K',
                                style: TextStyle(
                                  fontFamily: 'GB',
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('images/icon_comments.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text(
                                '1.5 K',
                                style: TextStyle(
                                  fontFamily: 'GB',
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              barrierColor: Colors.transparent,
                              backgroundColor: Colors.transparent,
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext biuldcontex) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                  child: DraggableScrollableSheet(
                                    initialChildSize: 0.4,
                                    minChildSize: 0.2,
                                    maxChildSize: 0.7,
                                    builder: (context, scrollController) {
                                      return Buttomsheet(scrollController);
                                    },
                                  ),
                                );
                              },
                            );
                          },
                          child: Image.asset('images/icon_share.png'),
                        ),
                        Image.asset('images/icon_save.png'),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getheader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Row(
        children: [
          _getperson(),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'fatemeh abbasnezhad',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'GB',
                  ),
                ),
                Text(
                  'فاطمه عباس نژاد بنام برنامه نویس',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SM',
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Image.asset(
            'images/icon_menu.png',
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _getperson() {
    return Center(
      child: DottedBorder(
        borderType: BorderType.RRect,
        dashPattern: [44, 10],
        strokeWidth: 2,
        color: Color(0xffF35383),
        radius: Radius.circular(17),
        padding: EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          child: Container(
            height: 38,
            width: 38,
            child: Image.asset('images/ftm.jpg'),
          ),
        ),
      ),
    );
  }

  Widget _getfalowing(int image) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            dashPattern: [26, 10],
            strokeWidth: 2,
            color: Color(0xffF35383),
            radius: Radius.circular(17),
            padding: EdgeInsets.all(4),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Container(
                height: 54,
                width: 54,
                child: Image.asset('images/$image.png'),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'test',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getaddstorybox() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.all(3),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff1C1F2E),
              ),
              child: Image.asset('images/icon_plus.png'),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'your story',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
