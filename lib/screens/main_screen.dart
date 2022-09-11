import 'package:flutter/material.dart';
import 'package:flutter_instagram/screens/activity_screen.dart';
import 'package:flutter_instagram/screens/add_content_screen.dart';
import 'package:flutter_instagram/screens/homescreen.dart';
import 'package:flutter_instagram/screens/search_screen.dart';
import 'package:flutter_instagram/screens/user_profile_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class mainscreen extends StatefulWidget {
  mainscreen({Key? key}) : super(key: key);

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  int _selectnavigatiobuttomitem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff1C1F2E),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectnavigatiobuttomitem,
        selectedIconTheme: IconThemeData(),
        onTap: (int index) {
          setState(() {
            _selectnavigatiobuttomitem = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('images/icon_home.png'),
            label: 'item1',
            activeIcon: Image.asset('images/icon_active_home.png'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/icon_search_navigation.png'),
            label: 'item2',
            activeIcon: Image.asset('images/icon_search_navigation_active.png'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/icon_add_navigation.png'),
            label: 'item3',
            activeIcon: Image.asset('images/icon_add_navigation_active.png'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/icon_activity_navigation.png'),
            label: 'item4',
            activeIcon:
                Image.asset('images/icon_activity_navigation_active.png'),
          ),
          BottomNavigationBarItem(
            icon: _getprofilenavigaton(Colors.grey),
            label: 'item4',
            activeIcon: _getprofilenavigaton(
              Color(0xffF35383),
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectnavigatiobuttomitem,
        children: getlayout(),
      ),
    );
  }

  Widget _getprofilenavigaton(Color inputcolor) {
    return Container(
      height: 33,
      width: 33,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: inputcolor,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset(
              'images/ftm.jpg',
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> getlayout() {
    return <Widget>[
      Homescreen(context),
      Search_screen(),
      addcontentscreen(),
      ActivityScreen(),
      Userprofilescreen(),
    ];
  }
}
