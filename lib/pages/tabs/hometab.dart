import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitch_clone/widget/Category.dart';
import 'package:twitch_clone/widget/CustomAppBar.dart';

class HomeTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: sizeHeight,
        width: sizeWidth,
        child: Column(
          children: [
            CustomAppBar(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20, top: 5),
              child: Container(
                height: sizeHeight * 0.15,
                width: sizeWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Color(0xFFFFB5FF)),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment(-0.85, -0.5),
                      child: Text(
                        'Category live \n broadcast everything',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.85, 0.3),
                      child: Text(
                        'Come On',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                    ),
                    Align(
                        alignment: Alignment(0.8, 0.9),
                        child: Image(
                          image: AssetImage('assets/loserfruit.png'),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: sizeHeight * 0.03,
            ),
            Categories(),
          ],
        ),
      ),
    );
  }
}
