import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxButton extends StatelessWidget {
  String title;
  VoidCallback onTap;

  BoxButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 52.0,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.black),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.lato(color: Colors.white, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
