import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobkarlite/view/component/input_box.dart';
import 'package:jobkarlite/view/page/experience_card.dart';
import '../../viewmodel/user_controller.dart';

class ExperienceList extends StatefulWidget {
  const ExperienceList({Key? key}) : super(key: key);

  @override
  State<ExperienceList> createState() => _ExperienceListState();
}

class _ExperienceListState extends State<ExperienceList> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 10,
        title: Text("Experience", style: UserController.style1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            InputBox(
              title: 'Search',
              filter: () {},
              icon: CupertinoIcons.search,
              controller: searchController,
            ),
            const SizedBox(height: 8),
            ExperienceCard(
              userName: 'Manoj Kumar',
              userEmail: 'manoj@gmail.com',
              skillName: 'ReatJS, Java, Python, Flutter',
              oldCompany: 'Infosys',
              yearExperience: 'Three Year',
              callTap: () {},
              chatTap: () {},
              favouriteTap: () {},
              hireTap: () {},
            ),
            const SizedBox(height: 8),
            ExperienceCard(
              userName: 'Sunaina Pandey',
              userEmail: 'sunanina@gmail.com',
              skillName: 'Marketing, Sales',
              oldCompany: 'Dhwani Solution',
              yearExperience: 'Tow Year',
              callTap: () {},
              chatTap: () {},
              favouriteTap: () {},
              hireTap: () {},
            ),
            const SizedBox(height: 8),
            ExperienceCard(
              userName: 'Aditya kumar',
              userEmail: 'aditya@gmail.com',
              skillName: 'Spring Boot, Hibernate',
              oldCompany: 'Locus Technology',
              yearExperience: 'Three Year',
              callTap: () {},
              chatTap: () {},
              favouriteTap: () {},
              hireTap: () {},
            ),
            const SizedBox(height: 8),
            ExperienceCard(
              userName: 'Vimla Ahuja',
              userEmail: 'vimla@gmail.com',
              skillName: 'ReactNative, ReactJS',
              oldCompany: 'TCS Solution',
              yearExperience: 'Tow Year',
              callTap: () {},
              chatTap: () {},
              favouriteTap: () {},
              hireTap: () {},
            ),
            const SizedBox(height: 8),
            ExperienceCard(
              userName: 'Manoj Kumar',
              userEmail: 'manoj@gmail.com',
              skillName: 'ReatJS, Java, Python, Flutter',
              oldCompany: 'Infosys',
              yearExperience: 'Three Year',
              callTap: () {},
              chatTap: () {},
              favouriteTap: () {},
              hireTap: () {},
            ),
            const SizedBox(height: 8),
            ExperienceCard(
              userName: 'Sunaina Pandey',
              userEmail: 'sunanina@gmail.com',
              skillName: 'Marketing, Sales',
              oldCompany: 'Dhwani Solution',
              yearExperience: 'Tow Year',
              callTap: () {},
              chatTap: () {},
              favouriteTap: () {},
              hireTap: () {},
            ),
            const SizedBox(height: 8),
            ExperienceCard(
              userName: 'Aditya kumar',
              userEmail: 'aditya@gmail.com',
              skillName: 'Spring Boot, Hibernate',
              oldCompany: 'Locus Technology',
              yearExperience: 'Three Year',
              callTap: () {},
              chatTap: () {},
              favouriteTap: () {},
              hireTap: () {},
            ),
            const SizedBox(height: 8),
            ExperienceCard(
              userName: 'Vimla Ahuja',
              userEmail: 'vimla@gmail.com',
              skillName: 'ReactNative, ReactJS',
              oldCompany: 'TCS Solution',
              yearExperience: 'Tow Year',
              callTap: () {},
              chatTap: () {},
              favouriteTap: () {},
              hireTap: () {},
            ),
            const SizedBox(height: 8),
            ExperienceCard(
              userName: 'Manoj Kumar',
              userEmail: 'manoj@gmail.com',
              skillName: 'ReatJS, Java, Python, Flutter',
              oldCompany: 'Infosys',
              yearExperience: 'Three Year',
              callTap: () {},
              chatTap: () {},
              favouriteTap: () {},
              hireTap: () {},
            ),
            const SizedBox(height: 8),
            ExperienceCard(
              userName: 'Sunaina Pandey',
              userEmail: 'sunanina@gmail.com',
              skillName: 'Marketing, Sales',
              oldCompany: 'Dhwani Solution',
              yearExperience: 'Tow Year',
              callTap: () {},
              chatTap: () {},
              favouriteTap: () {},
              hireTap: () {},
            ),
            const SizedBox(height: 8),
            ExperienceCard(
              userName: 'Aditya kumar',
              userEmail: 'aditya@gmail.com',
              skillName: 'Spring Boot, Hibernate',
              oldCompany: 'Locus Technology',
              yearExperience: 'Three Year',
              callTap: () {},
              chatTap: () {},
              favouriteTap: () {},
              hireTap: () {},
            ),
            const SizedBox(height: 8),
            ExperienceCard(
              userName: 'Vimla Ahuja',
              userEmail: 'vimla@gmail.com',
              skillName: 'ReactNative, ReactJS',
              oldCompany: 'TCS Solution',
              yearExperience: 'Tow Year',
              callTap: () {},
              chatTap: () {},
              favouriteTap: () {},
              hireTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
