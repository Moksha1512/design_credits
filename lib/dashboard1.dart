import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:designcredits/acacboards.dart';
import 'package:designcredits/sports.dart';
import 'package:designcredits/arts.dart';
import 'package:designcredits/education.dart';
import 'package:designcredits/sacboards.dart';

class Dashboard1 extends StatelessWidget {
  const Dashboard1({Key? key}) : super(key: key);

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
                  Flexible(
                    child: Text(
                      "Extra Curricular",
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
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
          children: [
            const SizedBox(height: 40),
            Text(
              "Senate",
              style: GoogleFonts.inriaSerif(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: Column(
                children: [
                  SvgPicture.asset(
                    'images/Indian_Institute_of_Technology_Jodhpur_Logo.svg',
                    width: 200,
                    height: 170,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigate to SAC page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SACboards(),
                            ),
                          );
                        },
                        child: const Text(
                          "SAC",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to ACAC page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ACACboards(),
                            ),
                          );
                        },
                        child: const Text(
                          "ACAC",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to SSC page
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => SscPage(),
                          //   ),
                          // );
                        },
                        child: const Text(
                          "SS",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Clubs and Societies",
              style: GoogleFonts.inriaSerif(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Image.asset(
                'images/Clubs_societies_logo.jpg',
                width: 200,
                height: 190,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to Arts page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArtsPage(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 108,
                        height: 100,
                        child: Image.asset(
                          'images/arts_logo.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 5),
                      const Text(
                        "Arts",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to Education page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EducationPage(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 108,
                        height: 100,
                        child: Image.asset(
                          'images/education_logo.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 5),
                      const Text(
                        "Education",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to Sports page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SportsPage(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 108,
                        height: 100,
                        child: Image.asset(
                          'images/sports_logo.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 5),
                      const Text(
                        "Sports",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
