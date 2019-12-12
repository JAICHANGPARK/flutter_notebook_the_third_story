
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notebook_the_third_story/fittel_app/profile_page.dart';

class FittelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(
          
        ),
      ),
      home: ProfilePage(),
    );
  }
}
