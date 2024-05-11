import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'deparments_data.dart'; 
import 'each_dept.dart';/// Assuming this file contains the DetailedExtraPage class
import 'school_data.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Curricular extends StatelessWidget {
  final bool isDepartments;

  const Curricular({Key? key, required this.isDepartments}) : super(key: key);

  void _navigateToDetailPage(BuildContext context, DummyData categoryData) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DetailInfoPage(
        title: categoryData.title,
        description: categoryData.description,
        location: categoryData.location,
        link: categoryData.link,
      ),
    ),
  );
}
void _navigateToDetailPage1(BuildContext context, SchoolData categoryData) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DetailInfoPage(
        title: categoryData.title,
        description: categoryData.description,
        location: categoryData.location,
        link: categoryData.link,
      ),
    ),
  );
}

Widget buildRow(BuildContext context, Object categoryData) {
  if (categoryData is DummyData) {
    final DummyData data = categoryData;

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            _navigateToDetailPage(context, data);
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
              Image.asset(
                data.imagePath, // Assuming you have added imagePath property to DummyData class
                width: 40,
                height: 40,
                // Add any additional styling or constraints here
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          data.title,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.inriaSerif(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
 else if (categoryData is SchoolData) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            _navigateToDetailPage1(context, categoryData);
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          (categoryData as SchoolData).title,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.inriaSerif(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
  } else {
    return SizedBox(); // Handle other types of data or unexpected cases
  }
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
                      isDepartments ? "Departments" : "Schools",
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 20,
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
            for (var categoryData in isDepartments ? dummyDataList : schoolDataList)
              buildRow(context, categoryData),
          ],
        ),
      ),
    );
  }
}
