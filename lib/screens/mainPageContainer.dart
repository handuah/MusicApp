import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/screens/homePage.dart';
import 'package:music_app/styles/colors.dart';

class MainPageContainer extends StatefulWidget {
  // const MainPageContainer({ Key? key }) : super(key: key);

  @override
  _MainPageContainerState createState() => _MainPageContainerState();
}

class _MainPageContainerState extends State<MainPageContainer> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkerblue,
      body: PageView(
        controller: _pageController,
        children: [
          HomePage(),
          HomePage(),
          HomePage(),
          HomePage(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Colors.red,
            icon: Icon(
              FontAwesomeIcons.home,
              color: Colors.grey,
              size: 26.0,
            ),
            label: 'Home',
            // title: Text('Dashboard'),
            activeIcon: Icon(
              FontAwesomeIcons.home,
              color: AppColors.darkerblue,
              size: 26.0,
            ),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.red,
            icon: Icon(
              FontAwesomeIcons.ticketAlt,
              color: HexColor('#2c2c2c'),
              size: 26.0,
            ),
            label: 'Vouchers',
            // title: Text('Dashboard'),
            activeIcon: Icon(
              FontAwesomeIcons.ticketAlt,
              color: AppColors.white,
              size: 26.0,
            ),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.red,
            icon: Icon(
              FontAwesomeIcons.heart,
              color: HexColor('#2c2c2c'),
              size: 26.0,
            ),
            label: '',
            // title: Text('Dashboard'),
            activeIcon: Icon(
              FontAwesomeIcons.heart,
              color: AppColors.white,
              size: 26.0,
            ),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.red,
            icon: Icon(
              FontAwesomeIcons.locationArrow,
              color: HexColor('#2c2c2c'),
              size: 26.0,
            ),
            label: '',
            // title: Text('Dashboard'),
            activeIcon: Icon(
              FontAwesomeIcons.locationArrow,
              color: AppColors.white,
              size: 26.0,
            ),
          ),
        ],
      ),
    );
  }
}
