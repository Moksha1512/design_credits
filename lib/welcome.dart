import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:designcredits/welcome_two.dart';
// import 'package:flutter_svg/flutter_svg.dart';
class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center( // Wrap the Column with Center
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/welcome.jpg',
                height: 289,
                width: 407,
              ),
              const SizedBox(height: 20),
              Text(
                "WELCOME TO IITJ",
                style: GoogleFonts.inriaSerif(
                  color: Colors.black,
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Embrace every opportunity, learn with",
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextSpan(
                      text: "\npassion, and create memories",
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextSpan(
                      text: "\nthat will last a lifetime",
                      style: GoogleFonts.inriaSerif(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const  Welcome2(),
                      ),
                    );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
