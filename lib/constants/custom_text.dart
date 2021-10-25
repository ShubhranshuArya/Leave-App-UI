import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customText({
    String text = '',
    double fontsize = 18,
    Color color = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return Text(
      text,
      style: GoogleFonts.robotoSlab(
        fontWeight: fontWeight,
        fontSize: fontsize,
        color: color,
      ),
    );
  }