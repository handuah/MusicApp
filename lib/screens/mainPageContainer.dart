import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/screens/homePage.dart';
import 'package:music_app/screens/searchPage.dart';
import 'package:music_app/styles/colors.dart';

class MainPageContainer extends StatefulWidget {
  // const MainPageContainer({ Key? key }) : super(key: key);

  @override
  _MainPageContainerState createState() => _MainPageContainerState();
}

class _MainPageContainerState extends State<MainPageContainer> {
  final PageController _pageController = PageController();
  int _selectedTabIndex = 0;

  // When user tap on one of the navigation item
  void _onItemTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkerblue,
      body: PageView(
        controller: _pageController,
        children: [
          HomePage(),
          SearchPage(),
          HomePage(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedTabIndex = page;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedTabIndex,
        elevation: 4.0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Colors.red,
            icon: Icon(
              FontAwesomeIcons.home,
              color: AppColors.white.withOpacity(0.5),
              size: 26.0,
            ),
            label: '',
            // title: Text('Dashboard'),
            activeIcon: Icon(
              FontAwesomeIcons.home,
              color: AppColors.white,
              size: 26.0,
            ),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.red,
            icon: Icon(
              FontAwesomeIcons.search,
              color: AppColors.white.withOpacity(0.5),
              size: 26.0,
            ),
            label: '',
            // title: Text('Dashboard'),
            activeIcon: Icon(
              FontAwesomeIcons.search,
              color: AppColors.white,
              size: 26.0,
            ),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.red,
            icon: Icon(
              FontAwesomeIcons.book,
              color: AppColors.white.withOpacity(0.5),
              size: 26.0,
            ),
            label: '',
            // title: Text('Dashboard'),
            activeIcon: Icon(
              FontAwesomeIcons.book,
              color: AppColors.white,
              size: 26.0,
            ),
          ),
        ],
      ),
    );
  }
}
