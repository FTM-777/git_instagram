import 'package:flutter/material.dart';
import 'package:flutter_instagram/model/enum/activity_enum.dart';

class ActivityScreen extends StatefulWidget {
  ActivityScreen({Key? key}) : super(key: key);

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with TickerProviderStateMixin {
  TabController? _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 70,
              color: Color(0xff1C1F2E),
              child: TabBar(
                controller: _tabcontroller,
                labelColor: Colors.white,
                labelStyle: TextStyle(fontFamily: 'GB', fontSize: 16),
                indicatorColor: Color(0xffF35383),
                indicatorWeight: 3.2,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(
                    text: 'Following',
                  ),
                  Tab(
                    text: 'You',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabcontroller,
                children: [
                  _getsamplelist(),
                  _getsamplelist(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getsamplelist() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              top: 20,
            ),
            child: Text(
              'New',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return _getRow(Activitystatus.following);
            },
            childCount: 3,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              top: 20,
            ),
            child: Text(
              'Today',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return _getRow(Activitystatus.likepost);
            },
            childCount: 2,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              top: 20,
            ),
            child: Text(
              'This week',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return _getRow(Activitystatus.messages);
            },
            childCount: 6,
          ),
        )
      ],
    );
  }

  Widget _getRow(Activitystatus status) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
      child: Row(
        children: [
          Container(
            height: 6,
            width: 6,
            decoration: BoxDecoration(
              color: Color(0xffF35383),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 7,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('images/item8.png'),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'fatemehab',
                    style: TextStyle(
                        fontFamily: 'GB', fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Started Following',
                    style: TextStyle(
                        fontFamily: 'GM',
                        fontSize: 12,
                        color: Color(0xffC5C5C5)),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'you',
                    style: TextStyle(
                        fontFamily: 'GM',
                        fontSize: 12,
                        color: Color(0xffC5C5C5)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '3min',
                    style: TextStyle(
                        fontFamily: 'GB',
                        fontSize: 12,
                        color: Color(0xffC5C5C5)),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          _getActionActivityRow(status),
        ],
      ),
    );
  }

  Widget _getActionActivityRow(Activitystatus status) {
    switch (status) {
      case Activitystatus.following:
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xffF35383),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Following',
            style: TextStyle(
              fontFamily: 'GB',
              fontSize: 12,
              color: Color(0xffC5C5C5),
            ),
          ),
        );

      case Activitystatus.likepost:
        return SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset('images/item1.png'),
            ),
          ),
        );

      case Activitystatus.messages:
        return OutlinedButton(
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
                fontFamily: 'GB', fontSize: 12, color: Color(0xffC5C5C5)),
          ),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Color(0xffC5C5C5), width: 2),
          ),
        );

      default:
        return SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset('images/item1.png'),
            ),
          ),
        );
    }
  }
}
