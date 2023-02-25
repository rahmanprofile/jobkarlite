import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "Help & Support",
          style: GoogleFonts.lato(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildCard(),
              const SizedBox(height: 4.0),
              _newCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(30.0),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          border: Border.all(color: Colors.black87.withOpacity(0.2), width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Help?",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Community Help",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "Address :  Mamura Noida Sector-66 \nUttar Pradesh - 201480",
                  style: GoogleFonts.abel(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Email :  recruiter@jobkar.co",
                  style: GoogleFonts.abel(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                //const SizedBox(height: 5.0),
                Text(
                  "Contact :  1800 231 486 120",
                  style: GoogleFonts.abel(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const Icon(CupertinoIcons.app_badge_fill, size: 28)
          ],
        ),
      ),
    );
  }

  Widget _newCard() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(30.0),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            border:
                Border.all(color: Colors.black87.withOpacity(0.2), width: 1)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Contact?",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Share your problem",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 0.0),
                Text(
                  "Write your problem's",
                  style: GoogleFonts.abel(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 8.0),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[200]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Title", border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[200]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(
                      maxLength: 10,
                      maxLines: 3,
                      decoration: const InputDecoration(
                          hintText: "Describe your problem",
                          border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width * 0.80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black54),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
