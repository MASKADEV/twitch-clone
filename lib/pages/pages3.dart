import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitch_clone/screens/home.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFFFB5FF),
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
                    'Keeping Twitch \n real',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        fontSize: 38, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: sizeHeight * 0.02,
                  ),
                  Text(
                    'millions of people comes to twitch every day to chat \n together interactive,step by step to create exclusive \n entertainment belonging to this community.',
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
                      image: AssetImage('assets/pokiimane.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Container(
                height: sizeHeight,
                width: sizeWidth,
                child: Align(
                  alignment: Alignment(0.75, 0.7),
                  child: Container(
                    height: sizeHeight * 0.08,
                    width: sizeHeight * 0.08,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: Color(0xFF8734FE),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Container(
                        height: sizeHeight * 0.07,
                        width: sizeHeight * 0.07,
                        decoration: BoxDecoration(
                            color: Color(0xFF8734FE),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Icon(
                            Icons.navigate_next,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
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
