import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Categories extends StatelessWidget {
  List<String> gamesThumb = [
    'assets/gamesthumb/just chatting.PNG',
    'assets/gamesthumb/league of legande.PNG',
    'assets/gamesthumb/among us.PNG',
    'assets/gamesthumb/apex legande.PNG',
    'assets/gamesthumb/cod cold war.PNG',
    'assets/gamesthumb/valorant.PNG',
    'assets/gamesthumb/crash.PNG',
    'assets/gamesthumb/Dayz.PNG',
    'assets/gamesthumb/destiny2.PNG',
    'assets/gamesthumb/dota 2.PNG',
    'assets/gamesthumb/escape from tarkov.PNG',
    'assets/gamesthumb/fortnite.PNG',
    'assets/gamesthumb/free fire.PNG',
    'assets/gamesthumb/minecraft.PNG',
    'assets/gamesthumb/pubg.PNG',
    'assets/gamesthumb/rainbow six siege.PNG',
    'assets/gamesthumb/sekiro.PNG',
  ];
  List<String> gamesName = [
    'Just Chatting',
    'League of Legand',
    'Among us',
    'Apex Legand',
    'Call of Duty : Cold War',
    'Valorant',
    'Crash',
    'Dayz',
    'Destiny 2',
    'Dota 2',
    'Escape From Tarkov',
    'Fortnit',
    'Free Fire',
    'Minecraft',
    'PUBG',
    'Rainbow Six Siege',
    'Sekiro',
  ];
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommanded For you',
                  style: GoogleFonts.raleway(
                      fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Text(
                  'See More',
                  style: GoogleFonts.raleway(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.purple),
                ),
              ],
            ),
            SizedBox(
              height: sizeHeight * 0.01,
            ),
            Container(
              height: sizeHeight * 0.54,
              width: sizeWidth,
              child: GridView.builder(
                  itemCount: gamesThumb.length - 2,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: sizeHeight * 0.29 / sizeWidth),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            height: sizeHeight * 0.25,
                            width: sizeWidth * 0.3,
                            color: Colors.black,
                            child: Image(
                              image: AssetImage(gamesThumb[index]),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: sizeHeight * 0.005,
                        ),
                        Text(
                          gamesName[index],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
