import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserBox extends StatelessWidget {
  final String name;
  final String email;
  final String? url;
  final VoidCallback onTap;

  const UserBox({Key? key,
  required this.name,
    required this.email,
    required this.onTap,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        color: Colors.grey[300],
        padding: const EdgeInsets.all(0.5),
        child: ListTile(
          onTap:onTap,
          leading: Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            child: const Icon(CupertinoIcons.person_fill),
          ),
          title:  Text(name),
          subtitle: Text(email),
          trailing: const Icon(
            CupertinoIcons.chevron_forward,
            size: 20,
          ),
        ),
      ),
    );
  }
}
