import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Search_screen extends StatelessWidget {
  const Search_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _getsearchandrowlist(),
            ),
            SliverToBoxAdapter(
              child: _getscrollsearch('material'),
            ),
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
                    QuiltedGridTile(2, 1),
                    QuiltedGridTile(2, 2),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  Column _getsearchandrowlist() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 17,
            bottom: 0,
          ),
          child: Container(
            width: 394,
            height: 46,
            decoration: BoxDecoration(
              color: Color(0xff272B40),
              borderRadius: BorderRadius.circular(
                13,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 0,
              ),
              child: Row(
                children: [
                  Image.asset('images/icon_search.png'),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 11,
                        bottom: 0,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search..',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontFamily: 'GB',
                            fontSize: 12,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Image.asset('images/icon_scan.png'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getscrollsearch(String name) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 18),
      height: 23,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 19),
            child: Container(
              width: 80,
              height: 23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(
                  0xff272B40,
                ),
              ),
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'GB',
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
