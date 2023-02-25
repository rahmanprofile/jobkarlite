import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Notifications",
          style: GoogleFonts.lato(
              color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 15,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(1.0),
                width: MediaQuery.of(context).size.width * 1.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: ListTile(
                  onTap: (){},
                  leading: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[200]),
                    child: const Center(
                      child: Icon(
                        CupertinoIcons.padlock_solid,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    "Notification from community",
                    style: GoogleFonts.lato(color: Colors.grey, fontSize: 13),
                  ),
                  trailing: const Icon(
                    CupertinoIcons.chevron_forward,
                    size: 20,
                  ),
                  title: Text(
                    "Google",
                    style: GoogleFonts.lato(),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
