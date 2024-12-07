import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:innovins/presentation/screens/Dashboard.dart';
import 'package:innovins/presentation/screens/login.dart';
import 'package:innovins/presentation/screens/product_list.dart';
import 'package:innovins/presentation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
        theme: ThemeData(
          // Define the default font family to Poppins
          textTheme: GoogleFonts.abyssinicaSilTextTheme(
            Theme.of(context).textTheme,
          ),
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),      home:  SplashScreen(),
    );
  }
}


