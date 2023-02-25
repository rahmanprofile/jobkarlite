import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobkarlite/view/page/chats_page.dart';
import 'package:jobkarlite/view/page/help_page.dart';
import 'package:jobkarlite/view/page/hired_page.dart';
import 'package:jobkarlite/view/page/home_page.dart';
import 'package:jobkarlite/view/page/notification_page.dart';
import 'package:jobkarlite/view/page/people_page.dart';
import 'package:jobkarlite/view/page/saved_page.dart';
import 'package:jobkarlite/view/plan/plan.dart';
import 'package:jobkarlite/viewmodel/user_controller.dart';
import 'action_page/internship_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  static const List _optionList = [
    HomePage(),
    ChatsPage(),
    PeoplePage(),
    SavedPage(),
    HiredPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: UserController.color,
              ),
              accountName: const Text("Sachin Kumar"),
              accountEmail: const Text("sachin@gmail.com"),
            ),
            NextMenu(
                title: 'Profile',
                onTap: () {},
                icon: CupertinoIcons.person_fill),
            NextMenu(
                title: 'Notification',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationPage(),
                    ),
                  );
                },
                icon: CupertinoIcons.bell_circle_fill),
            NextMenu(
                title: 'Plan',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Plan()),
                  );
                },
                icon: CupertinoIcons.checkmark_seal_fill),
            NextMenu(
                title: 'Internship',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InternshipPage()),
                  );
                },
                icon: CupertinoIcons.app_badge_fill),
            NextMenu(
                title: 'Terms & Policy',
                onTap: () {},
                icon: CupertinoIcons.chevron_down_square_fill),
            NextMenu(
                title: 'Help',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HelpPage(),
                    ),
                  );
                },
                icon: CupertinoIcons.headphones),
            NextMenu(
                title: 'Logout',
                onTap: () {},
                icon: CupertinoIcons.square_arrow_right_fill),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationPage(),
                  ),
                );
              },
              icon: const Icon(
                CupertinoIcons.bell_circle,
                size: 27,
              ))
        ],
        title: const Text("Jobkar Lite"),
      ),
      body: _optionList.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: UserController.style4,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedItemColor: UserController.color,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bubble_left), label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.umbrella), label: 'People'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart), label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.tags), label: 'Hired'),
        ],
      ),
    );
  }
}

class NextMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const NextMenu(
      {Key? key, required this.title, required this.onTap, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, size: 22.0, color: const Color(0xFF34495E)),
      title: Text(title, style: UserController.style0),
      trailing: const Icon(CupertinoIcons.chevron_forward, size: 20),
    );
  }
}
