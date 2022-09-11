import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, ISScrolled) {
            return [
              SliverAppBar(
                shadowColor: Colors.white,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 17,
                      right: 17,
                    ),
                    child: Icon(Icons.menu),
                  ),
                ],
                bottom: PreferredSize(
                  child: Container(
                    height: 15,
                    decoration: BoxDecoration(
                      color: Color(0xff1C1F2E),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                  ),
                  preferredSize: Size.fromHeight(10),
                ),
                expandedHeight: 170,
                backgroundColor: Color(0xff1C1F2E),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'images/11.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: _getprofileheader(),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: customsliverdelegate(
                  TabBar(
                    tabs: [
                      Tab(
                        icon: FaIcon(FontAwesomeIcons.image),
                      ),
                      Tab(
                        icon: FaIcon(FontAwesomeIcons.bookmark),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CustomScrollView(
                slivers: [
                  SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      ((context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 171, 166, 248),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset('images/item$index.png'),
                            ),
                          ),
                        );
                      }),
                      childCount: 10,
                    ),
                    gridDelegate: SliverQuiltedGridDelegate(
                      crossAxisCount: 3,
                      mainAxisSpacing: 7,
                      crossAxisSpacing: 7,
                      repeatPattern: QuiltedGridRepeatPattern.inverted,
                      pattern: [
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(2, 2),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                      ],
                    ),
                  ),
                ],
              ),
              CustomScrollView(
                slivers: [
                  SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      ((context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 171, 166, 248),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset('images/item$index.png'),
                            ),
                          ),
                        );
                      }),
                      childCount: 10,
                    ),
                    gridDelegate: SliverQuiltedGridDelegate(
                      crossAxisCount: 3,
                      mainAxisSpacing: 7,
                      crossAxisSpacing: 7,
                      repeatPattern: QuiltedGridRepeatPattern.inverted,
                      pattern: [
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(2, 2),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getbio() {
    return Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 17),
          child: Container(
            height: 230,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'برنامه نویس فلاتر و اندروید  ',
                  style: TextStyle(color: Colors.white, fontFamily: 'SM'),
                ),
                Text(
                  'uiطراحی تخصصی و حرفه ای ',
                  style: TextStyle(color: Colors.white, fontFamily: 'SM'),
                ),
                Text(
                  'و اشنایی کامل با دارت و فلاتر',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white, fontFamily: 'SM'),
                ),
                Row(
                  children: [
                    Text('👇'),
                    Text(
                      'لینک گیت هاب ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SM',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset('images/Group 91.png'),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'github.com/FTM-777',
                      style: TextStyle(
                          color: Colors.blue, fontFamily: 'GB', fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset('images/Group 101.png'),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Developer',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'GB', fontSize: 17),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset('images/Group 67.png'),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'IRAN',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'GB', fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(170, 46),
                        primary: Color(0xffF35383),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Follow',
                        style: TextStyle(
                          fontFamily: 'GB',
                          fontSize: 15,
                          color: Color(0xffC5C5C5),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        minimumSize: Size(170, 46),
                        side: BorderSide(
                          color: Color(0xffC5C5C5),
                          width: 2,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Message',
                        style: TextStyle(
                          fontFamily: 'GB',
                          fontSize: 12,
                          color: Color(0xffC5C5C5),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _getprofileheader() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 17,
                bottom: 10,
              ),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xffF35383),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      17,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset(
                        'images/ftm.jpg',
                      ),
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
                      fontSize: 15,
                      fontFamily: 'SM',
                      color: Color.fromARGB(255, 253, 105, 154),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'developr | FTM',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'GB',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                right: 17.20,
              ),
              child: Image.asset('images/Group 96.png'),
            ),
          ],
        ),
        _getbio(),
      ],
    );
  }
}

class customsliverdelegate extends SliverPersistentHeaderDelegate {
  customsliverdelegate(this._tabbar);
  TabBar _tabbar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color(0xff1C1F2E),
      child: _tabbar,
    );
  }

  @override
  double get maxExtent => _tabbar.preferredSize.height;

  @override
  double get minExtent => _tabbar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
