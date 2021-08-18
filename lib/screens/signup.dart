import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/styles/colors.dart';

class SignUpScreen extends StatefulWidget {
  // const SignUpScreen({ Key? key }) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.darkerblue,
      body: SingleChildScrollView(
        // controller: controller,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: screenHeight * 0.40,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F6%2F2020%2F06%2F09%2FBest-Albums-of-the-year3.jpg&q=85',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: screenHeight * 0.6,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0),
                          ),
                          color: AppColors.black.withOpacity(0.5),
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.play,
                                  color: AppColors.white,
                                  size: 60.0,
                                ),
                                Positioned(
                                  top: screenHeight * 0.035,
                                  left: screenWidth * 0.05,
                                  child: FaIcon(
                                    FontAwesomeIcons.play,
                                    color: AppColors.darkblue.withOpacity(0.8),
                                    size: 35.0,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            Text(
                              'Sign Up',
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
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.05,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: AppColors.white.withOpacity(0.5),
                            fontSize: 18.0,
                            fontWeight: FontWeight.normal,
                          ),
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
                            hintText: 'handuah@gmail.com',
                            hintStyle: GoogleFonts.montserrat(
                              color: AppColors.white.withOpacity(0.5),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Text(
                          'Password',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            // height: screenHeight * 0.0001,
                            color: AppColors.white.withOpacity(0.5),
                            fontSize: 18.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          obscuringCharacter: '*',
                          style: GoogleFonts.montserrat(
                            color: AppColors.white.withOpacity(0.8),
                            fontSize: 18.0,
                            fontWeight: FontWeight.normal,
                          ),
                          decoration: InputDecoration(
                            hintText: '************',
                            hintStyle: GoogleFonts.montserrat(
                              color: AppColors.white.withOpacity(0.5),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Text(
                          'Re-enter your password',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            // height: screenHeight * 0.0001,
                            color: AppColors.white.withOpacity(0.5),
                            fontSize: 18.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          obscuringCharacter: '*',
                          style: GoogleFonts.montserrat(
                            color: AppColors.white.withOpacity(0.8),
                            fontSize: 18.0,
                            fontWeight: FontWeight.normal,
                          ),
                          decoration: InputDecoration(
                            hintText: '************',
                            hintStyle: GoogleFonts.montserrat(
                              color: AppColors.white.withOpacity(0.5),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                // Center(
                //   child: Container(
                //     height: screenHeight * 0.05,
                //     width: screenWidth * 0.8,
                //     // color: Colors.green,
                //     child: Text(
                //       'By continuing, you agree to our Terms of Service and Privacy Policy.',
                //       textAlign: TextAlign.center,
                //       style: GoogleFonts.montserrat(
                //         // height: screenHeight * 0.0001,
                //         color: AppColors.white.withOpacity(0.5),
                //         fontSize: 12.0,
                //         fontWeight: FontWeight.normal,
                //       ),
                //     ),
                //   ),
                // ),
                Center(
                  child: Container(
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.8,
                    child: EasyRichText(
                      'By continuing, you agree to our Terms of Service and Privacy Policy.',
                      textAlign: TextAlign.center,
                      patternList: [
                        EasyRichTextPattern(
                          targetString: 'By continuing, you agree to our',
                          style: GoogleFonts.montserrat(
                            color: AppColors.white.withOpacity(0.5),
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        EasyRichTextPattern(
                          targetString: 'Terms of Service',
                          style: GoogleFonts.montserrat(
                            color: AppColors.lightblue,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        EasyRichTextPattern(
                          targetString: 'and',
                          style: GoogleFonts.montserrat(
                            color: AppColors.white.withOpacity(0.5),
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        EasyRichTextPattern(
                          targetString: 'Privacy Policy',
                          style: GoogleFonts.montserrat(
                            color: AppColors.lightblue,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Center(
                  child: SizedBox(
                    height: screenHeight * 0.07,
                    width: screenWidth * 0.9,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign up',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: AppColors.darkblue,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: AppColors.lighterblue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
