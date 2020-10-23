import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: Container(
                height: sizeHeight * 0.05,
                width: sizeWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/back.png'),
                        height: 20,
                        width: 20,
                      ),
                    ),
                    Container(
                        child: Text(
                      'MASKADEV',
                      style: GoogleFonts.raleway(
                        fontSize: 20,
                      ),
                    )),
                    Container(
                      child: Image(
                        image: AssetImage('assets/setting.png'),
                        height: 20,
                        width: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: Container(
                height: sizeHeight * 0.12,
                width: sizeWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: sizeHeight * 0.09,
                      width: sizeHeight * 0.09,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xFF772CE8)),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Container(
                          height: sizeHeight * 0.085,
                          width: sizeHeight * 0.085,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              image: DecorationImage(
                                  image: AssetImage('assets/profile.jpg')),
                              borderRadius: BorderRadius.circular(40)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Column(
                        children: [
                          Text('67.8k',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w900)),
                          Text('Followers',
                              style: GoogleFonts.raleway(
                                  fontSize: 10, color: Colors.grey))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Column(
                        children: [
                          Text('92',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w900)),
                          Text('Following',
                              style: GoogleFonts.raleway(
                                  fontSize: 10, color: Colors.grey))
                        ],
                      ),
                    ),
                    Container(
                      height: sizeHeight * 0.05,
                      width: sizeHeight * 0.05,
                      decoration: BoxDecoration(
                          color: Color(0xFF772CE8),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Image(
                          image: AssetImage('assets/logout.png'),
                          width: 20,
                          height: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: Container(
                height: sizeHeight * 0.05,
                width: sizeWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: sizeHeight * 0.04,
                      width: sizeHeight * 0.04,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Image(
                          image: AssetImage('assets/sound.png'),
                          width: 25,
                          height: 25,
                          color: Color(0xFF772CE8),
                        ),
                      ),
                    ),
                    Text(
                      'Watching Ubisoft Streaming Rainbow Six Siege',
                      style: GoogleFonts.raleway(fontSize: 11),
                    ),
                    Text(
                      '            ',
                      style: GoogleFonts.raleway(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: Container(
                height: sizeHeight * 0.08,
                width: sizeWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: sizeHeight * 0.04,
                      width: sizeHeight * 0.04,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Image(
                          image: AssetImage('assets/profile.png'),
                          width: 22,
                          height: 22,
                          color: Color(0xFF772CE8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 8),
                      child: Text('My Channel',
                          style: GoogleFonts.raleway(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                    ),
                    Text('                         ',
                        style: GoogleFonts.raleway(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    Container(
                      height: sizeHeight * 0.04,
                      width: sizeHeight * 0.04,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Image(
                          image: AssetImage('assets/setting.png'),
                          width: 22,
                          height: 22,
                          color: Color(0xFF772CE8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 8),
                      child: Text('Stream tools',
                          style: GoogleFonts.raleway(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: Container(
                height: sizeHeight * 0.13,
                width: sizeWidth,
                decoration: BoxDecoration(
                    color: Color(0xFF772CE8),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Container(
                    height: sizeHeight * 0.06,
                    width: sizeWidth * 0.55,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text('TRY PREMUIM',
                            style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.white))),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: Card(
                elevation: 5,
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/star.png'),
                    width: 23,
                    height: 23,
                  ),
                  title: Text(
                    'Subscribe',
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  trailing: Image(
                    image: AssetImage('assets/back.png'),
                    width: 23,
                    height: 23,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: Card(
                elevation: 5,
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/star.png'),
                    width: 23,
                    height: 23,
                  ),
                  title: Text(
                    'Set online Status',
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  trailing: Image(
                    image: AssetImage('assets/back.png'),
                    width: 23,
                    height: 23,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: Card(
                elevation: 5,
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/star.png'),
                    width: 23,
                    height: 23,
                  ),
                  title: Text(
                    'Friends',
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  trailing: Image(
                    image: AssetImage('assets/back.png'),
                    width: 23,
                    height: 23,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
