// // // import 'package:designcredits/login.dart';
// // // import 'package:designcredits/login.dart';
// // // import 'package:designcredits/arts.dart';
import 'package:designcredits/dashboard.dart';
// // import 'package:designcredits/Extracurricular.dart';
// // import 'package:designcredits/dashboard.dart';
// // import 'package:designcredits/sports.dart';
// // import 'package:designcredits/registration.dart';
// // import 'package:designcredits/welcome.dart';
// // import 'package:designcredits/welcome_two.dart';
// // import 'package:designcredits/dashboard_circular.dart';
// // import 'package:designcredits/SACboards.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home:  const Dashboard (),
//     theme: ThemeData(
//       scaffoldBackgroundColor: Color(0xFFF2F0F0),
//     ),
//   ));
// }


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
import 'package:designcredits/features/app/splash_screen/splash_screen.dart';
// import 'package:designcredits/features/user_auth/presentation/pages/home_page.dart';
import 'package:designcredits/features/user_auth/presentation/pages/login_page.dart';
import 'package:designcredits/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:designcredits/welcome.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options:const FirebaseOptions(
        apiKey: "AIzaSyAlmdRqLZX3mLoz5p-eFN5oGzaVxPzn_k4",
        appId: "1:482126996429:web:a308f501b6ce0af6e3da84",
        messagingSenderId: "482126996429",
        projectId: "iitj-utility-app",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IITJ Utility App',
      routes: {
        '/': (context) => SplashScreen(
          child: Welcome(),
        ),
        '/Welcome': (context) => Welcome(),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => const SignUpPage(),
        '/home': (context) => Dashboard(),
      },
    );
  }
}