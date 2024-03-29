import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart'
// import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:music_app/styles/colors.dart';
import 'package:music_app/jsonData/trendingMusic.dart';

class SearchPage extends StatefulWidget {
  // const SearchPage({ Key? key }) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // initializing artist data
  var searchArtist = TrendingMusic.getData;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.darkerblue,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Container(
              width: screenWidth,
              height: screenHeight * 0.65,
              color: AppColors.darkerblue,
              child: ListView.separated(
                padding: EdgeInsets.only(top: screenHeight * 0.004),
                itemBuilder: (BuildContext recentCtxt, int recentInt) =>
                    _recentSearchCard(recentCtxt, recentInt),
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: screenHeight * 0.01,
                ),
                itemCount: searchArtist.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  //RECENT SEARCH MUSIC CARDS
  Widget _recentSearchCard(BuildContext recentContext, int recentSearchInt) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight * 0.16,
      decoration: BoxDecoration(
        color: HexColor("#181841"),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.01,
          vertical: screenHeight * 0.01,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  elevation: 4.0,
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    width: screenWidth * 0.28,
                    height: screenHeight * 0.16,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: NetworkImage(
                          // 'https://www.pluggedin.com/wp-content/uploads/2021/01/Weeknd-Blinding-Lights-WP.jpg',
                          searchArtist[recentSearchInt]['albumImgPath'],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.03,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // 'Billie Eilish',
                      searchArtist[recentSearchInt]['artistName'],
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        color: AppColors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      // 'Your Power',
                      searchArtist[recentSearchInt]['songName'],
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        color: AppColors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(
            //   width: screenWidth * 0.2,
            // ),
            Text(
              '3:57',
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                color: AppColors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
