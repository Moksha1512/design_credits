import 'package:designcredits/dashboard1.dart';
import 'package:designcredits/extracurricular.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../global/common/toast.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:designcredits/sports.dart';
import 'dashboard_circular.dart';
// import 'package:designcredits/education.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome to Student Hub",
              style: GoogleFonts.inriaSerif(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Let your journey begin here",
              style: GoogleFonts.inriaSerif(
                color: Color.fromARGB(207, 102, 92, 92),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushNamed(context, "/login");
                showToast(message: "Successfully signed out");
              },
              child: Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Sign out",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: ImageLinkPage(),
      ),
    );
  }
}

class ImageLinkPage extends StatelessWidget {
  const ImageLinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          ImageLink(
            imageUrl: 'images/acadamic.jpg',
            linkText: 'Curricular',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DashboardCircular(),
                ),
              );
            },
          ),
          SizedBox(height: 20),
          ImageLink(
            imageUrl: 'images/arts_logo.jpg',
            linkText: 'Extra Curricular',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Dashboard1(),
                ),
              );
            },
          ),
          SizedBox(height: 20),
          ImageLink(
            imageUrl: 'images/essentials.jpg',
            linkText: 'Essentials',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExtraCurricularPage(),
                ),
              );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class ImageLink extends StatelessWidget {
  final String imageUrl;
  final String linkText;
  final VoidCallback onTap;

  const ImageLink({
    required this.imageUrl,
    required this.linkText,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 150,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            linkText,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
