import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_svg/flutter_svg.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Image.asset(
                'images/login_image.png',
                width: 700,
              ),
              const SizedBox(height: 60),
              TextButton.icon(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const lo(),
                  //   ),
                  // );
                },
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                  size: 20,
                ),
                label: Text(
                  "Sign up with Google",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 70,
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0xFF2A99EA).withOpacity(0.55),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Or",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              // Email Input Field
              Container(
                width: 300, // Specify the desired width here
                child: TextFormField(
                  decoration:  InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), // Set the border radius here
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Password Input Field
              Container(
                width: 300, // Specify the desired width here
                child: TextFormField(
                  decoration:  InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), // Set the border radius here
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              // Login Button
             // Specify the desired width here
                 ElevatedButton(
                  onPressed: () {
                    // Implement your login logic here
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 70,
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFF2A99EA).withOpacity(0.82),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Set the border radius here
                      ),
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
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
