import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'curricular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package

class DashboardCircular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0, // Setting elevation to 0 to remove the shadow effect
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
                      "Curricular",
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
            Image.asset(
              'images/iitjcampus.jpg', // Path to your image
              width: double.infinity, // Make the image take the full width
              fit: BoxFit.cover, // Cover the entire space available
            ),
            const SizedBox(height: 40), // Add spacing between image and text
            InkWell(
              onTap: () {
                // Handle department click
                // Navigate to department page and pass department parameter
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Curricular(isDepartments: true), // Pass isDepartments as true
                  ),
                );
              },
              child: Text(
                "Departments",
                style: TextStyle(
                  color: Colors.black, // Change color as needed
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16), // Add spacing between sections
            InkWell(
              onTap: () {
                // Handle schools click
                // Navigate to schools page and pass department parameter
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Curricular(isDepartments: false), // Pass isDepartments as false
                  ),
                );
              },
              child: const Text(
                "Schools",
                style: TextStyle(
                  color: Colors.black, // Change color as needed
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16), // Add spacing between sections
  Container(
  color: Colors.black, // Set the background color of the container to black
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // const SizedBox(height: 40), // Add spacing between image and text
      Container(
        padding: EdgeInsets.all(30), // Add padding to create space inside the box
        color: Colors.white, // Set the background color of the box
        child: const Text(
          "Important Documents", // Title for the section
          style: TextStyle(
            color: Colors.black,
            fontSize: 20, // Adjust the size of the title
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(height: 16), // Add spacing between sections
      InkWell(
        onTap: () async {
          // Handle the tap on the regulations text
          const url = 'http://iitj.ac.in/uploaded_docs/Regulation/Academic_Regulations_Final_03_09_2019.pdf';
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        child: const Text(
          "         Regulations to be followed",
          style: TextStyle(
            color: Colors.white, // Change text color to white
            fontSize: 15, // Adjust the size of the title
            fontWeight: FontWeight.bold,
            // decoration: TextDecoration.underline, // Add underline to indicate it's clickable
          ),
        ),
      ),
      const SizedBox(height: 16), // Add spacing between sections and the title
      InkWell(
        onTap: () async {
          // Handle the tap on the academic calendar text for Semester 1
          const url = 'https://iitj.ac.in/assets/uploads/document/2024/04/2024-04-24-6628b3e41b0f9-1713943524.pdf#toolbar=0';
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        child: const Text(
          "     Academic Calendar - Semester 1",
          style: TextStyle(
            color: Colors.white, // Change text color to white
            fontSize: 15, // Adjust the size of the title
            fontWeight: FontWeight.bold,
            // decoration: TextDecoration.underline, // Add underline to indicate it's clickable
          ),
        ),
      ),
      const SizedBox(height: 16), // Add spacing between sections
      InkWell(
        onTap: () async {
          // Handle the tap on the academic calendar text for Semester 2
          const url = 'https://iitj.ac.in/academics/uploads/2023/11/Academic-Calendar-AY-2023-24-Sem-II.pdf#toolbar=0';
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        child: const Text(
          "     Academic Calendar - Semester 2",
          style: TextStyle(
            color: Colors.white, // Change text color to white
            fontSize: 15, // Adjust the size of the title
            fontWeight: FontWeight.bold,
            // decoration: TextDecoration.underline, // Add underline to indicate it's clickable
          ),
        ),
      ),
      const SizedBox(height: 16), // Add spacing between sections
    ],
  ),
),

          ],
        ),
      ),
    );
  }
}
