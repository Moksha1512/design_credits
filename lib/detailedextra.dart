import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPage extends StatelessWidget {
  final String pageTitle;
  final String imagePath;
  final List<String> names;
  final List<String> locations;
  final List<String>? images; // Add images parameter

  DetailPage({
    required this.pageTitle,
    required this.imagePath,
    required this.names,
    required this.locations,
    this.images,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < names.length; i++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: leftPadding, vertical: 10),
                    child: Text(
                      names[i],
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: leftPadding),
                    child: Text(
                      locations[i],
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 1,
                    height: 20,
                    indent: 20,
                    endIndent: 20,
                  ),
                  if (images != null && images!.isNotEmpty && i == names.length - 1) // Display images only below the last location
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: SingleChildScrollView( // Wrap the row in SingleChildScrollView
                        scrollDirection: Axis.horizontal, // Make it scrollable horizontally
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: images!
                              .map(
                                (image) => GestureDetector(
                                  onTap: () {
                                    // Handle image tap to show enlarged view
                                    showDialog(
                                      context: context,
                                      builder: (context) => Dialog(
                                        child: Image.asset(image),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    image,
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
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
