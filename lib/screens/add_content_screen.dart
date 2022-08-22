import 'package:flutter/material.dart';

class addcontentscreen extends StatelessWidget {
  const addcontentscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: postheader(),
                ),
                SliverToBoxAdapter(
                  child: _getfocusepost(),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      ((context, index) {
                        return Container(
                          color: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'images/item$index.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }),
                      childCount: 10,
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(
                    bottom: 90,
                  ),
                ),
              ],
            ),
            Container(
              width: 428,
              height: 83,
              decoration: BoxDecoration(
                color: Color(0xff272B40),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _gettextWidget('Draft', Color(0xffF35383)),
                    _gettextWidget('Gallery', Colors.white),
                    _gettextWidget('Take', Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text _gettextWidget(String text, var color) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'GB',
        fontSize: 16,
        color: color,
      ),
    );
  }

  Widget _getfocusepost() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      height: 394,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          'images/man.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget postheader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 27),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Post',
                style: TextStyle(
                  fontFamily: 'GB',
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Container(
                  width: 20.16,
                  height: 10,
                  child: Image.asset('images/angle.png'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              _gettextWidget('Next', Colors.white),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Image.asset('images/nexticon.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
