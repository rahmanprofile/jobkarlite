import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final VoidCallback? onTap;
  final IconData icon;
  final VoidCallback? filter;

  const InputBox(
      {Key? key,
      required this.title,
      this.onTap,
        this.filter,
      required this.icon,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 0.0),
        child: Center(
          child: TextFormField(
            controller: controller,
            onTap: onTap,
            style: const TextStyle(
                color: Colors.black54, fontSize: 16, fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              hintText: title,
              suffixIcon: InkWell(
                  onTap: filter,
                  child: Icon(CupertinoIcons.list_bullet)),
              prefixIcon: Icon(
                icon,
                color: Colors.black54,
              ),
              hintStyle: const TextStyle(
                  color: Colors.black54, fontSize: 16, fontWeight: FontWeight.w500),
              focusColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
                borderSide: const BorderSide(color: Colors.white),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
