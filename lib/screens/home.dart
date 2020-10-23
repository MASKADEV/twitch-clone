import 'package:flutter/material.dart';
import 'package:twitch_clone/pages/tabs/hometab.dart';
import 'package:twitch_clone/pages/tabs/profile.dart';
import 'package:twitch_clone/widget/tabs.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _tabPageController = PageController();
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _tabPageController,
          onPageChanged: (num) {
            setState(() {
              _selectedTab = num;
            });
          },
          children: [HomeTabs(), Profile()],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Align(
              alignment: Alignment(0, 0.99),
              child: Tabs(
                selectedtab: _selectedTab,
                tabPressed: (num) {
                  _tabPageController.animateToPage(num,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInCubic);
                },
              )),
        )
      ],
    ));
  }
}
