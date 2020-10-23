import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.025),
        height: sizeHeight * 0.067,
        width: sizeWidth,
        // color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('Br',
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    )),
                Text('o',
                    style: GoogleFonts.montserrat(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.purple)),
                Text('wse',
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    )),
              ],
            ),
            Container(
              width: sizeWidth * 0.18,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: sizeHeight * 0.025,
                      width: sizeHeight * 0.025,
                      child: Center(
                        child: Image(
                          image: AssetImage('assets/searching.png'),
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                    Container(
                      height: sizeHeight * 0.025,
                      width: sizeHeight * 0.025,
                      child: Center(
                        child: Image(
                          image: AssetImage('assets/mail.png'),
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
