import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/styles/colors.dart';

class StartScreen extends StatefulWidget {
  // const StartScreen({ Key? key }) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.darkerblue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                FaIcon(
                  FontAwesomeIcons.play,
                  color: AppColors.white,
                  size: 80.0,
                ),
                Positioned(
                  top: screenHeight * 0.035,
                  left: screenWidth * 0.05,
                  child: FaIcon(
                    FontAwesomeIcons.play,
                    color: AppColors.darkblue.withOpacity(0.8),
                    size: 55.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Text(
              'MusicApp',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: AppColors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
