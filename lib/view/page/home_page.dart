import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobkarlite/view/action_page/advertising_page.dart';
import 'package:jobkarlite/view/action_page/event_page.dart';
import 'package:jobkarlite/view/action_page/internship_page.dart';
import 'package:jobkarlite/view/action_page/job_form.dart';
import 'package:jobkarlite/view/component/input_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          child: Column(
            children: [
              InputBox(
                title: 'Search here',
                onTap: () {},
                icon: CupertinoIcons.search,
                controller: _searchController,
              ),
              const SizedBox(height: 8.0),
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width*0.98,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.zero,
                  color: Colors.white
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            builder: (context) {
              return Container(
                padding: const EdgeInsets.all(5.0),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 8.0),
                    Center(
                      child: Text(
                        "Create New",
                        style: GoogleFonts.abel(
                            color: Colors.black87,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    _buildCard(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const JobForm(),
                        ),
                      );
                    }, 'Jobs', 'Create a jobs'),
                    _buildCard(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EventPage(),
                        ),
                      );
                    }, 'Event & Listing', 'Create a event'),
                    _buildCard(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdvertisingPage(),
                        ),
                      );
                    }, 'Advertisement', 'Create a advertisement'),
                    _buildCard(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InternshipPage(),
                        ),
                      );
                    }, 'Internship', 'Create a internship'),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(
          CupertinoIcons.location_circle,
          size: 28,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildCard(VoidCallback onTap, String title, String sub) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Icon(CupertinoIcons.eyeglasses),
        ),
        trailing: const Icon(CupertinoIcons.chevron_forward, size: 20),
        title: Text(
          title,
          style: GoogleFonts.abel(),
        ),
        subtitle: Text(
          sub,
          style: GoogleFonts.abel(),
        ),
      ),
    );
  }
}
