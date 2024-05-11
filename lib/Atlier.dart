import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Atlier extends StatelessWidget {
  const Atlier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double leftPadding = 20.0;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Add spacing between image and text
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    "Atliers",
                    style: GoogleFonts.inriaSerif(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
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
            Padding(
              padding: EdgeInsets.only(left: leftPadding),
              child: Text(
                "Secretary :",
                style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: leftPadding),
              child: Text(
                "Harshita Sehra",
                style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: leftPadding),
              child: Text(
                "Phone no: ",
                style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: leftPadding),
              child: Text(
                "9807602222",
                style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.only(left: leftPadding),
              child: Text(
                "Join Secretary :",
                style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: leftPadding),
              child: Text(
                "Vidhi Jain",
                style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: leftPadding),
              child: Text(
                "Phone no: ",
                style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: leftPadding),
              child: Text(
                "8847608124",
                style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.only(left: leftPadding),
              child: Text(
                "Core members",
                style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Add the list of core members
            for (var member in [
              "Chaital Ghan",
              "Deepanshu",
              "Chahat Baranwal",
              "Keshika Sharma",
              "Garvita",
              "Mitali Agrawal",
              "Abhiroop Bhavsar",
              "Pranavi",
              "Soumya Siri",
              "Avinash Kumar",
              "Salla Kaushik",
              "Divya Sankhala",
              "Amol Gaur",
              "Avula Thanu Shree",
              "Poras Singh",
              "Mukesh Kumar",
              "Suraj Chothe",
              "Rinku Kumari",
              "Suhani Agarwal",
              "Yuvraj Saran",
              "Shivangi Mehra",
              "Sanika Narmitwar",
              "Vindhya Jain"
            ])
              Padding(
                padding: EdgeInsets.only(left: leftPadding),
                child: Text(
                  member,
                  style: GoogleFonts.inriaSerif(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            const SizedBox(height: 3,),
          ],
        ),
      ),
    );
  }
}
