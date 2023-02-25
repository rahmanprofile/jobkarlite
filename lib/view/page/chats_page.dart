import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobkarlite/view/component/input_box.dart';
import 'package:jobkarlite/view/component/user_box.dart';
import 'package:jobkarlite/view/page/chatroom.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: Column(
            children: [
              InputBox(
                title: "Search people",
                icon: CupertinoIcons.search,
                controller: _searchController,
              ),
              const SizedBox(height: 8.0),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return UserBox(
                      name: 'Mahesh Kumar',
                      email: 'mahesh@gmail.com',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Chatroom(),
                          ),
                        );
                      },
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
}
