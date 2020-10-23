import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  final int selectedtab;
  final Function(int) tabPressed;
  const Tabs({
    Key key,
    this.selectedtab,
    this.tabPressed,
  }) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    int selected = widget.selectedtab ?? 0;
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Container(
      height: sizeHeight * 0.07,
      width: sizeWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Color(0xFF772CE8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SingleTab(
            selected: selected == 0 ? true : false,
            imagePath: 'assets/home.png',
            onPressed: () {
              widget.tabPressed(0);
            },
          ),
          SingleTab(
            selected: selected == 1 ? true : false,
            imagePath: 'assets/profile.png',
            onPressed: () {
              widget.tabPressed(1);
            },
          ),
          SingleTab(
            selected: selected == 2 ? true : false,
            imagePath: 'assets/logout.png',
            onPressed: () {
              widget.tabPressed(2);
            },
          ),
        ],
      ),
    );
  }
}

class SingleTab extends StatelessWidget {
  final bool selected;
  final String imagePath;
  final Function onPressed;
  const SingleTab({
    Key key,
    this.selected,
    this.imagePath,
    this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool _selected = selected ?? false;
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Image(
            image: AssetImage(imagePath),
            color: _selected ? Colors.white : Colors.grey,
            width: 30,
            height: 30,
          ),
        ));
  }
}
