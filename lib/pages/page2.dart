import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF02C9AF),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: sizeHeight,
              width: sizeWidth,
              child: Column(
                children: [
                  SizedBox(
                    height: sizeHeight * 0.04,
                  ),
                  Text(
                    'Brining \n it all',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: sizeHeight * 0.02,
                  ),
                  Text(
                    'Want to connect with a large audiance? no problem,we \n have millions of new friends here who want to introduce \n you to.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.raleway(fontSize: 10),
                  ),
                ],
              ),
            ),
            Container(
              height: sizeHeight,
              width: sizeWidth,
              child: Column(
                children: [
                  SizedBox(
                    height: sizeHeight * 0.218,
                  ),
                  Container(
                    height: sizeHeight * 0.7,
                    child: Image(
                      image: AssetImage('assets/Annemunition.PNG'),
                      fit: BoxFit.fitHeight,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
