import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InternshipPage extends StatefulWidget {
  const InternshipPage({Key? key}) : super(key: key);

  @override
  State<InternshipPage> createState() => _InternshipPageState();
}

class _InternshipPageState extends State<InternshipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        titleSpacing: 10,
        title: Text(
          "Internships",
          style: GoogleFonts.abel(fontSize: 20),
        ),
      ),
    );
  }
}
