// sports_page.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'academic.dart';
import 'package:designcredits/detailedarts.dart';
import 'package:flutter_svg/flutter_svg.dart';
class BAIPage extends StatelessWidget {
  const BAIPage({Key? key}) : super(key: key);

  Widget buildRow(BuildContext context, AcademicCategoryData categoryData) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 20),
            Image.asset(
              categoryData.imagePath,
              width: 100,
              height: 130,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    categoryData.title,
                    style: GoogleFonts.inriaSerif(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            pageTitle: categoryData.title,
                            detail1Title: categoryData.detail1Title,
                            detail1Content: categoryData.detail1Content,
                            detail2Title: categoryData.detail2Title,
                            detail2Content: categoryData.detail2Content,
                            description: categoryData.description,
                            imagePath: categoryData.imagePath,
                            coreMembers: categoryData.coreMembers,
                          ),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Divider(
          color: Colors.black,
          thickness: 1,
          height: 5,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
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
                      "BAI",
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text(
              "Board of Academic Interaction",
              style: GoogleFonts.inriaSerif(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 80),
            const Divider(
            color: Colors.black,
            thickness: 1, // Adjust thickness as needed
            ),
            for (var categoryData in categoriesData)
              buildRow(context, categoryData),
          const SizedBox(height: 50),
            Text(
              "President",
              style: GoogleFonts.inriaSerif(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                Text(
                  "Santosh Mogurampelly",
                  style: GoogleFonts.inriaSerif(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Vice President",
              style: GoogleFonts.inriaSerif(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/page_iitj_logo.jpg',
                  width: 100,
                  height: 100,
                ),
                Text(
                  "Naman Gupta",
                  style: GoogleFonts.inriaSerif(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
