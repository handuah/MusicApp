import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart'
// import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/styles/colors.dart';
import 'package:music_app/jsonData/trendingMusic.dart';

class SearchPage extends StatefulWidget {
  // const SearchPage({ Key? key }) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
              top: screenHeight * 0.080,
            ),
            child: Text(
              'Search',
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                color: AppColors.white,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            style: GoogleFonts.montserrat(
              color: AppColors.white.withOpacity(0.8),
              fontSize: 18.0,
              fontWeight: FontWeight.normal,
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.darkerblue.withOpacity(0.5),
              ),
              hintText: 'Song name, artistes, albums',
              hintStyle: GoogleFonts.montserrat(
                color: AppColors.darkblue.withOpacity(0.5),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.white,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              fillColor: AppColors.white,
              filled: true,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Text(
            'Recent',
            textAlign: TextAlign.left,
            style: GoogleFonts.montserrat(
              color: AppColors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
