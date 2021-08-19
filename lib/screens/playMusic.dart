import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/styles/colors.dart';
import 'package:music_app/jsonData/trendingMusic.dart';

class PlayMusic extends StatefulWidget {
  // const PlayMusic({ Key? key }) : super(key: key);

  @override
  _PlayMusicState createState() => _PlayMusicState();
}

class _PlayMusicState extends State<PlayMusic> {
  double sliderVal = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.darkerblue,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                0.0,
                screenHeight * 0.08,
                0.0,
                screenHeight * 0.04,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(50.0),
                    elevation: 4.0,
                    color: AppColors.darkblue,
                    child: IconButton(
                      iconSize: 24.0,
                      icon: FaIcon(
                        FontAwesomeIcons.arrowLeft,
                        color: AppColors.white.withOpacity(0.8),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(50.0),
                    elevation: 4.0,
                    color: AppColors.darkblue,
                    child: IconButton(
                      iconSize: 24.0,
                      icon: FaIcon(
                        FontAwesomeIcons.ellipsisV,
                        color: AppColors.white.withOpacity(0.8),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 10.0,
              child: Container(
                height: screenHeight * 0.43,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        // artisticDetails[popMusInt]['albumImgPath'],
                        'https://images.genius.com/ae6d0db2997830961b8063eeb9af76ed.1000x1000x1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Text(
                    'Taeyeon',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: AppColors.lightblue,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Be Real',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: AppColors.white.withOpacity(0.8),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: AppColors.white,
                          size: 30.0,
                        ),
                        Icon(
                          Icons.shuffle,
                          color: AppColors.darkblue,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '0:00',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: AppColors.white.withOpacity(0.8),
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    '3:22',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: AppColors.white.withOpacity(0.8),
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Slider(
              value: sliderVal,
              onChanged: (double currentVal) {
                setState(() {
                  sliderVal = currentVal;
                });
              },
              // label: "Distance is: ${sliderVal.round().toString()}",
              min: 0,
              max: 100,
              activeColor: AppColors.lightblue,
              inactiveColor: Colors.grey.withOpacity(0.2),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      elevation: 10.0,
                      child: CircleAvatar(
                        maxRadius: 30.0,
                        backgroundColor: AppColors.darkblue,
                        child: FaIcon(
                          FontAwesomeIcons.fastBackward,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      elevation: 10.0,
                      child: CircleAvatar(
                        maxRadius: 40.0,
                        backgroundColor: AppColors.lightblue,
                        child: FaIcon(
                          FontAwesomeIcons.play,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      elevation: 10.0,
                      child: CircleAvatar(
                        maxRadius: 30.0,
                        backgroundColor: AppColors.darkblue,
                        child: FaIcon(
                          FontAwesomeIcons.fastForward,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
