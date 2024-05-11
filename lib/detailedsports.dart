// detailed.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';
class DetailPage extends StatelessWidget {
  final String pageTitle;
  final String detail1Title;
  final String detail1Content;
  final String detail2Title;
  final String detail2Content;
  final String description;
  final String imagePath;

  DetailPage({
    required this.pageTitle,
    required this.detail1Title,
    required this.detail1Content,
    required this.detail2Title,
    required this.detail2Content,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    const double leftPadding = 20.0;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  // Add spacing between image and text
                  Flexible(
                    child: Text(
                      pageTitle,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8), // Adjust spacing as needed
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  'images/Indian_Institute_of_Technology_Jodhpur_Logo.svg',
                  width: 80,
                  height: 80,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  Center(
                    child: Image.asset(
                      imagePath,
                      width: 200,
                       height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: leftPadding),
                    child: Text(
                      "Description",
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: leftPadding ,right:leftPadding),
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18,),
            Center( // Centering captains and co-captains
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: leftPadding),
                    child: Text(
                      "$detail1Title",
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: leftPadding,right:leftPadding),
                    child: Text(
                      detail1Content,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18,),
                  Padding(
                    padding: EdgeInsets.only(left: leftPadding),
                    child: Text(
                      "$detail2Title",
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: leftPadding,right: leftPadding),
                    child: Text(
                      detail2Content,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
