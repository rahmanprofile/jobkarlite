import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobkarlite/viewmodel/user_controller.dart';

class Chatroom extends StatefulWidget {
  const Chatroom({Key? key}) : super(key: key);

  @override
  State<Chatroom> createState() => _ChatroomState();
}

class _ChatroomState extends State<Chatroom> {
  final _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.videocam_circle),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.list_bullet),
          ),
        ],
        title: Row(
          children: [
            const CircleAvatar(backgroundColor: Colors.white),
            const SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Mahesh Kumar",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "mahesh@gmail.com",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 100,
              width: double.infinity,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextFormField(
                controller: _messageController,
                decoration: InputDecoration(
                    hintText: "Send a message",
                    prefixIcon: InkWell(
                        onTap: () {}, child: const Icon(CupertinoIcons.folder)),
                    border: InputBorder.none,
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: UserController.color,
                        child: const Icon(CupertinoIcons.location_fill,
                            color: Colors.white),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
