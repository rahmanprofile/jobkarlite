import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobCard extends StatelessWidget {
  final String id;
  final String company;
  final String jobTitle;
  final String salary;
  final String jobFor;
  final String requirements;
  final String address;
  final VoidCallback editTap;
  final VoidCallback deleteTap;

  const JobCard({
    Key? key,
    required this.id,
    required this.company,
    required this.jobTitle,
    required this.salary,
    required this.jobFor,
    required this.requirements,
    required this.address,
    required this.editTap,
    required this.deleteTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 8.0, left: 8.0, right: 8.0, bottom: 4.0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0),
                        child: Row(
                          children: [
                            Text(
                              'Company :',
                              style: GoogleFonts.roboto(color: Colors.black54),
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              company,
                              style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0),
                        child: Row(
                          children: [
                            Text(
                              'Job Title :',
                              style: GoogleFonts.roboto(color: Colors.black54),
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              jobTitle,
                              style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0),
                        child: Row(
                          children: [
                            Text(
                              'Salary :',
                              style: GoogleFonts.roboto(color: Colors.black54),
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              salary,
                              style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0),
                        child: Row(
                          children: [
                            Text(
                              'Job for :',
                              style: GoogleFonts.roboto(color: Colors.black54),
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              jobFor,
                              style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0),
                        child: Row(
                          children: [
                            Text(
                              'Requirements :',
                              style: GoogleFonts.roboto(color: Colors.black54),
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              requirements,
                              style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0),
                        child: Row(
                          children: [
                            Text(
                              'Address :',
                              style: GoogleFonts.roboto(color: Colors.black54),
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              address,
                              style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
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
                    borderRadius: BorderRadius.circular(0), color: Colors.grey),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: editTap,
                        child: Container(
                          height: 35,
                          width: double.infinity,
                          decoration:const BoxDecoration(
                              color: Colors.green
                          ),
                          child: Center(
                            child: Text(
                              'Edit',
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: InkWell(
                        onTap: deleteTap,
                        child: Container(
                          height: 35,
                          width: double.infinity,
                          decoration:const BoxDecoration(
                            color: Colors.red
                          ),
                          child: Center(
                            child: Text(
                              'Delete',
                              style: GoogleFonts.lato(color: Colors.white,
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
