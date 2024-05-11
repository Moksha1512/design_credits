// // co_circular_page.dart

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// // import 'extra_data.dart';
// // import 'package:designcredits/detailed.dart';

// class CoCircularPage extends StatelessWidget {
//   const CoCircularPage({Key? key}) : super(key: key);

//   Widget buildRow(BuildContext context, CategoryData categoryData) {
//     return Column(
//       children: [
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const SizedBox(width: 20),
//             Image.asset(
//               categoryData.imagePath,
//               width: 100,
//               height: 130,
//             ),
//             const SizedBox(width: 10),
//             Expanded(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     categoryData.title,
//                     style: GoogleFonts.inriaSerif(
//                       color: Colors.black,
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(
//                       //     builder: (context) => DetailPage(
//                       //       pageTitle: categoryData.title,
//                       //       names: categoryData.names,
//                       //       locations: categoryData.locations,
//                       //     ),
//                       //   ),
//                       // );
//                     },
//                     child: const Padding(
//                       padding: const EdgeInsets.only(right: 20),
//                       child: Icon(
//                         Icons.arrow_forward,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         const Divider(
//           color: Colors.black,
//           thickness: 1,
//           height: 5,
//           indent: 20,
//           endIndent: 20,
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 100,
//         backgroundColor: Colors.white,
//         iconTheme: const IconThemeData(color: Colors.black),
//         title: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: Row(
//                 children: [
//                   // Add spacing between image and text
//                   Flexible(
//                     child: Text(
//                       "Co-Curriculars",
//                       overflow: TextOverflow.ellipsis,
//                       style: GoogleFonts.inriaSerif(
//                         color: Colors.black,
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 8), // Adjust spacing as needed
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Align(
//                 alignment: Alignment.centerRight,
//                 child: Image.asset(
//                   'images/page_iitj_logo.jpg',
//                   width: 100,
//                   height: 250,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             for (var categoryData in categoriesData)
//               buildRow(context, categoryData),
//           ],
//         ),
//       ),
//     );
//   }
// }
