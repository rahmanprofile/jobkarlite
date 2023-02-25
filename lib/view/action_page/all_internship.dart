import 'package:flutter/material.dart';

class AllInternship extends StatefulWidget {
  const AllInternship({Key? key}) : super(key: key);

  @override
  State<AllInternship> createState() => _AllInternshipState();
}

class _AllInternshipState extends State<AllInternship> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children:const [
            Center(
              child: Text("No internship post"),
            )
          ],
        )
    );
  }
}
