import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'screen/credit_screen.dart';
import 'screen/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Credit App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromRGBO(29, 28, 29, 1),
        iconTheme: const IconThemeData().copyWith(
          color: Colors.white,
        ),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
          bodySmall: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          displaySmall: GoogleFonts.chakraPetch(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          displayMedium: GoogleFonts.sourceCodePro(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          // headlineMedium: GoogleFonts.cardo(
          //   color: Colors.white,
          //   fontSize: 22,
          //   fontWeight: FontWeight.w500,
          // ),
          headlineSmall: GoogleFonts.cardo(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          titleMedium: GoogleFonts.openSans(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
