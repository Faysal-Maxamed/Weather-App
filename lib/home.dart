import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wheather_app/themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/back.png"),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/cloud.png"),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Weather",
                  style: GoogleFonts.poppins(
                    fontSize: 65,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: " Forecast",
                  style: GoogleFonts.poppins(
                    fontSize: 65,
                    color:
                        yellowcol, 
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: yellowcol,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: Text(
                "Get started",
                style: GoogleFonts.openSans(
                  fontSize: 22,
                  color: textcolor,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
