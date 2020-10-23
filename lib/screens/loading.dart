import 'package:flutter/material.dart';
import 'package:twitch_clone/pages/page1.dart';
import 'package:twitch_clone/pages/page2.dart';
import 'package:twitch_clone/pages/pages3.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  var pageviewcontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageviewcontroller,
        onPageChanged: (int index) {
          pageviewcontroller.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.ease);
        },
        children: [
          Page1(),
          Page2(),
          Page3(),
        ],
      ),
    );
  }
}
