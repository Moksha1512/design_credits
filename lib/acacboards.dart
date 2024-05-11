import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:designcredits/bdspage.dart';
import 'package:designcredits/biepage.dart';
import 'package:designcredits/bcdpage.dart';
import 'package:designcredits/baipage.dart';
import 'package:designcredits/bccapage.dart';
import 'package:designcredits/saapage.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ACACboards extends StatelessWidget {
  const ACACboards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // const double leftPadding = 20.0;
    List<String> boardNames = ['BAI (Board of Academic Interaction)', 'BCD (Board of Career Development)', 'BCCA (Board of Co-Curricular Affairs)', 'BDS (Board of Departmental Societies)', 'BIE (Board of Innovation and Enterpreneurship)', 'SAA (Society of Alumni Affairs)'];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    "ACAC",
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            Text(
              "Academic and Co-curricular Activity Council",
              style: GoogleFonts.inriaSerif(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/ACAC.jpg',
                  width: 200,
                  height: 170,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Students' Gymkhana, IIT Jodhpur is the governing body that looks after all student activities.",
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              color: const Color.fromARGB(136, 0, 0, 0),
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Text(
                  "Boards",
                  style: GoogleFonts.inriaSerif(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.white, // Set background color to white
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: boardNames.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                        children: [
                          MouseRegion(
                cursor: SystemMouseCursors.click, // Change cursor to pointer
                child: GestureDetector(
                  onTap: () {
                    navigateToBoardPage(context, index);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10), // Add left padding
                    child: Text(
                      boardNames[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              if (index < boardNames.length - 1) Divider(),  // Add a line after each child
                        ],
                      );
                    },
                  ),
                ),


              ],
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                Text(
                  "General Secretary",
                  style: GoogleFonts.inriaSerif(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Anirudh",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20,)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void navigateToBoardPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BAIPage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BCDPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BCCAPage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BDSPage()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BIEPage()),
        );
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SAAPage()),
        );
        break;
      default:
        break;
    }
  }
}
