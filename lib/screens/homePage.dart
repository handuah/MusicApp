import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/styles/colors.dart';

class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.darkerblue,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04,
        ),
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.08,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Hello Hannah',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: AppColors.white,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: AppColors.lightblue,
                  maxRadius: 30.0,
                  child: CircleAvatar(
                    backgroundColor: AppColors.darkblue,
                    maxRadius: 28.0,
                    backgroundImage: NetworkImage(
                        'https://media-exp1.licdn.com/dms/image/C4D03AQHBc2B31Q5YBA/profile-displayphoto-shrink_400_400/0/1592216299456?e=1634774400&v=beta&t=SLpzcedjDr5KFAWiO6VKptTNmw0FjuicRTXqLmJh8EY'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Trending Music',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: AppColors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'View All',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: AppColors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Container(
            height: screenHeight * 0.2,
            width: screenWidth,
            decoration: BoxDecoration(
                // color: Colors.red,
                ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Stack(
                  children: [
                    Container(
                      height: screenHeight * 0.2,
                      width: screenWidth * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://www.pluggedin.com/wp-content/uploads/2021/01/Weeknd-Blinding-Lights-WP.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.2,
                      width: screenWidth * 0.9,
                      decoration: BoxDecoration(
                        color: AppColors.darkblue.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Positioned(
                      right: screenWidth * 0.04,
                      bottom: screenHeight * 0.02,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'The Weekend',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: AppColors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Blinding Lights',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: AppColors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth * 0.04,
                ),
                Container(
                  height: screenHeight * 0.2,
                  width: screenWidth * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.04,
                ),
                Container(
                  height: screenHeight * 0.2,
                  width: screenWidth * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
