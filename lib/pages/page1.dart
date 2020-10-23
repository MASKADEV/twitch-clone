import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFFE3B65A),
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
                    'Reach a large \n audience',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: sizeHeight * 0.02,
                  ),
                  Text(
                    'Fans and friends call their names and squeeze into the \n chat room to brush 666! there are endless interesting \n communities to choose from.',
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
                    height: sizeHeight * 0.2679,
                  ),
                  Container(
                    height: sizeHeight * 0.65,
                    child: Image(
                      image: AssetImage('assets/loserfruit.png'),
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
