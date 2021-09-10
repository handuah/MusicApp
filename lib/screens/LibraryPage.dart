import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart'
// import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:music_app/styles/colors.dart';
import 'package:music_app/jsonData/trendingMusic.dart';

class LibraryPage extends StatefulWidget {
  // const LibraryPage({ Key? key }) : super(key: key);

  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  // initializing artist data
  var searchArtist = TrendingMusic.getData;
  // bool tapped = false;

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
                'Your Library',
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
            DefaultTabController(
              initialIndex: 0,
              length: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: TabBar(
                      labelPadding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.01,
                      ),
                      indicatorColor: AppColors.lighterblue,
                      labelColor: AppColors.white,
                      unselectedLabelColor: AppColors.white,
                      tabs: [
                        Tab(
                          child: Text(
                            'Favourites',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                              color: AppColors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Playlists',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                              color: AppColors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Albums',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                              color: AppColors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Artists',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                              color: AppColors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.shuffle,
                      color: AppColors.white,
                    ),
                    Text(
                      'Shuffle',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        color: AppColors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                FaIcon(
                  FontAwesomeIcons.borderAll,
                  color: AppColors.white,
                ),
              ],
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
    bool tapped = false;
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
            // GestureDetector(
            //   onDoubleTap: () {
            //     setState(() {
            //       tapped = !tapped;
            //     });
            //   },
            //   child: tapped
            //       ? Icon(
            //           Icons.favorite,
            //           color: AppColors.white,
            //         )
            //       : Icon(
            //           Icons.favorite_outline,
            //           color: AppColors.white,
            //         ),
            // ),
            IconButton(
                icon: tapped
                    ? Icon(
                        Icons.favorite,
                        color: AppColors.white,
                      )
                    : Icon(
                        Icons.favorite_outline,
                        color: AppColors.white,
                      ),
                onPressed: () {
                  setState(() {
                    tapped = !tapped;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
