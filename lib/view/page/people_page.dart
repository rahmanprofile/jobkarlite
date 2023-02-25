import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobkarlite/view/component/input_box.dart';
import 'package:jobkarlite/view/component/user_box.dart';
import 'package:jobkarlite/view/page/experience_list.dart';
import 'package:jobkarlite/view/page/fresher_list.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: InputBox(
                  title: 'Search',
                  icon: CupertinoIcons.search,
                  controller: _searchController,
                ),
              ),
              const SizedBox(height: 8.0),
              _buildCard(
                'Experience',
                'Experience People',
                'Experience Person',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ExperienceList(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 8.0),
              _buildCard(
                'Fresher',
                'Fresher Person',
                'Fresher Person',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FresherList(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 8.0),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return UserBox(
                      name: 'Sunita Kumari',
                      email: 'sunita@gmail.com',
                      onTap: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(
      String title, String mainTitle, String valueTitle, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width * 1.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), color: Colors.white),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 80.0,
              width: 80,
              decoration: const BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0)),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      CupertinoIcons.personalhotspot,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 2.0),
                    Text(
                      title,
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mainTitle,
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: [
                          const Icon(
                            CupertinoIcons.person,
                            color: Colors.grey,
                            size: 15,
                          ),
                          const SizedBox(width: 4.0),
                          Text(
                            valueTitle,
                            style: GoogleFonts.lato(
                                fontSize: 11, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(width: 10.0),
                          const Icon(
                            CupertinoIcons.money_dollar,
                            color: Colors.grey,
                            size: 15,
                          ),
                          const SizedBox(width: 4.0),
                          Text(
                            'Premium Member',
                            style: GoogleFonts.lato(
                                fontSize: 11, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 30.0),
                  const Icon(
                    CupertinoIcons.chevron_forward,
                    size: 20,
                    color: Colors.black,
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
