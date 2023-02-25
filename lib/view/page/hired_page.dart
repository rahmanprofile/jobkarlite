import 'package:flutter/material.dart';
import 'package:jobkarlite/view/page/experience_card.dart';

import 'fresher_card.dart';

class HiredPage extends StatefulWidget {
  const HiredPage({Key? key}) : super(key: key);

  @override
  State<HiredPage> createState() => _HiredPageState();
}

class _HiredPageState extends State<HiredPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: 0.0),
              FresherCard(
                userName: 'Shubash Shukla',
                userEmail: 'shubash@gmail.com',
                skill: 'Flutter Development',
                testScore: '30/25',
                callTap: () {},
                chatTap: () {},
                favouriteTap: () {},
                hireTap: () {},
              ),
              SizedBox(height: 5.0),
              ExperienceCard(
                userName: 'Manjeet Mallick',
                userEmail: 'manjeet@gmail.com',
                skillName: 'Flutter, Java, NodeJS',
                oldCompany: 'Dhawani Solution',
                yearExperience: 'Two Year',
                callTap: () {},
                chatTap: () {},
                favouriteTap: () {},
                hireTap: () {},
              ),
              SizedBox(height: 5.0),
              FresherCard(
                userName: 'Shubash Shukla',
                userEmail: 'shubash@gmail.com',
                skill: 'Flutter Development',
                testScore: '30/25',
                callTap: () {},
                chatTap: () {},
                favouriteTap: () {},
                hireTap: () {},
              ),
              SizedBox(height: 5.0),
              ExperienceCard(
                userName: 'Manjeet Mallick',
                userEmail: 'manjeet@gmail.com',
                skillName: 'Flutter, Java, NodeJS',
                oldCompany: 'Dhawani Solution',
                yearExperience: 'Two Year',
                callTap: () {},
                chatTap: () {},
                favouriteTap: () {},
                hireTap: () {},
              ),
              SizedBox(height: 5.0),
              ExperienceCard(
                userName: 'Manjeet Mallick',
                userEmail: 'manjeet@gmail.com',
                skillName: 'Flutter, Java, NodeJS',
                oldCompany: 'Dhawani Solution',
                yearExperience: 'Two Year',
                callTap: () {},
                chatTap: () {},
                favouriteTap: () {},
                hireTap: () {},
              ),
              SizedBox(height: 5.0),
              FresherCard(
                userName: 'Shubash Shukla',
                userEmail: 'shubash@gmail.com',
                skill: 'Flutter Development',
                testScore: '30/25',
                callTap: () {},
                chatTap: () {},
                favouriteTap: () {},
                hireTap: () {},
              ),
              SizedBox(height: 5.0),
              ExperienceCard(
                userName: 'Manjeet Mallick',
                userEmail: 'manjeet@gmail.com',
                skillName: 'Flutter, Java, NodeJS',
                oldCompany: 'Dhawani Solution',
                yearExperience: 'Two Year',
                callTap: () {},
                chatTap: () {},
                favouriteTap: () {},
                hireTap: () {},
              ),
              SizedBox(height: 5.0),
              ExperienceCard(
                userName: 'Manjeet Mallick',
                userEmail: 'manjeet@gmail.com',
                skillName: 'Flutter, Java, NodeJS',
                oldCompany: 'Dhawani Solution',
                yearExperience: 'Two Year',
                callTap: () {},
                chatTap: () {},
                favouriteTap: () {},
                hireTap: () {},
              ),
              SizedBox(height: 5.0),
              FresherCard(
                userName: 'Shubash Shukla',
                userEmail: 'shubash@gmail.com',
                skill: 'Flutter Development',
                testScore: '30/25',
                callTap: () {},
                chatTap: () {},
                favouriteTap: () {},
                hireTap: () {},
              ),
              SizedBox(height: 5.0),
              ExperienceCard(
                userName: 'Manjeet Mallick',
                userEmail: 'manjeet@gmail.com',
                skillName: 'Flutter, Java, NodeJS',
                oldCompany: 'Dhawani Solution',
                yearExperience: 'Two Year',
                callTap: () {},
                chatTap: () {},
                favouriteTap: () {},
                hireTap: () {},
              ),
              SizedBox(height: 5.0),
              ExperienceCard(
                userName: 'Manjeet Mallick',
                userEmail: 'manjeet@gmail.com',
                skillName: 'Flutter, Java, NodeJS',
                oldCompany: 'Dhawani Solution',
                yearExperience: 'Two Year',
                callTap: () {},
                chatTap: () {},
                favouriteTap: () {},
                hireTap: () {},
              ),
              SizedBox(height: 5.0),
              FresherCard(
                userName: 'Shubash Shukla',
                userEmail: 'shubash@gmail.com',
                skill: 'Flutter Development',
                testScore: '30/25',
                callTap: () {},
                chatTap: () {},
                favouriteTap: () {},
                hireTap: () {},
              ),
              SizedBox(height: 5.0),
            ],
          ),
        ),
      ),
    );
  }
}
