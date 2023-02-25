import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobForm extends StatefulWidget {
  const JobForm({Key? key}) : super(key: key);
  @override
  State<JobForm> createState() => _JobFormState();
}

class _JobFormState extends State<JobForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Job From",
          style: GoogleFonts.abel(color: Colors.white),
        ),
      ),
    );
  }
}
