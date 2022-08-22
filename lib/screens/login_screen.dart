import 'package:flutter/material.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({Key? key}) : super(key: key);

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  FocusNode negahban1 = FocusNode();
  FocusNode negahban2 = FocusNode();

  @override
  void initState() {
    super.initState();
    negahban1.addListener(() {
      setState(() {});
    });
    super.initState();
    negahban1.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _getimagecontainer(),
          _getcontainerbox(),
        ],
      ),
    );
  }

  Widget _getimagecontainer() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      top: 0,
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff323A99),
                    Color(0xffF98BFC),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                image: DecorationImage(
                  image: AssetImage('images/rocket.png'),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getcontainerbox() {
    return Column(
      children: [
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                    ),
                    SizedBox(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Sign in to ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          Image(
                            image: AssetImage('images/mood.png'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 43,
                      ),
                      child: TextField(
                        focusNode: negahban1,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            borderSide: BorderSide(
                              color: Color(0xffC5C5C4),
                              width: 3.0,
                            ),
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: negahban1.hasFocus
                                ? Color(0xffF35383)
                                : Colors.white,
                            fontFamily: 'GB',
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xffF35383),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 43,
                      ),
                      child: TextField(
                        focusNode: negahban2,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            borderSide: BorderSide(
                              color: Color(0xffC5C5C4),
                              width: 3.0,
                            ),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: negahban2.hasFocus
                                ? Color(0xffF35383)
                                : Colors.white,
                            fontFamily: 'GB',
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xffF35383),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 46,
                  width: 126,
                  child: ElevatedButton(
                    style: Theme.of(context).elevatedButtonTheme.style,
                    onPressed: () {},
                    child: Text(
                      'Sign in',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account ? / ',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Colors.grey[600],
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Sign in',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    negahban1.dispose();
    negahban2.dispose();
    super.dispose();
  }
}
