import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FresherCard extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String skill;
  final String testScore;
  final VoidCallback callTap;
  final VoidCallback chatTap;
  final VoidCallback favouriteTap;
  final VoidCallback hireTap;

  const FresherCard({
    Key? key,
    required this.userName,
    required this.userEmail,
    required this.skill,
    required this.testScore,
    required this.callTap,
    required this.chatTap,
    required this.favouriteTap,
    required this.hireTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 8.0, left: 8.0, right: 8.0, bottom: 4.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[200]
                  ),
                  child: const Center(
                    child: Icon(
                      CupertinoIcons.person_alt_circle,
                      size: 40,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const SizedBox(width: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Name :',
                          style: GoogleFonts.roboto(color: Colors.black54),
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          userName,
                          style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8.0),
                    Row(
                      children: [
                        Text(
                          'Email :',
                          style: GoogleFonts.roboto(color: Colors.black54),
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          userEmail,
                          style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8.0),
                    Row(
                      children: [
                        Text(
                          'Skill :',
                          style: GoogleFonts.roboto(color: Colors.black54),
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          skill,
                          style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8.0),
                    Row(
                      children: [
                        Text(
                          'Test Score :',
                          style: GoogleFonts.roboto(color: Colors.black54),
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          testScore,
                          style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  color: Colors.grey
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: callTap,
                    child: Column(
                      children: [
                        const Icon(CupertinoIcons.phone, size: 18),
                        Text(
                          'Call',
                          style: GoogleFonts.lato(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: chatTap,
                    child: Column(
                      children: [
                        const Icon(CupertinoIcons.bubble_left, size: 18),
                        Text(
                          'Chat',
                          style: GoogleFonts.lato(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: favouriteTap,
                    child: Column(
                      children: [
                        const Icon(CupertinoIcons.heart, size: 18),
                        Text(
                          'Save',
                          style: GoogleFonts.lato(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: hireTap,
                    child: Column(
                      children: [
                        const Icon(CupertinoIcons.hand_thumbsup, size: 18),
                        Text(
                          'Hire',
                          style: GoogleFonts.lato(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
