import 'package:flutter/material.dart';

class AllAdvertisement extends StatefulWidget {
  const AllAdvertisement({Key? key}) : super(key: key);

  @override
  State<AllAdvertisement> createState() => _AllAdvertisementState();
}

class _AllAdvertisementState extends State<AllAdvertisement> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children:const [
            Center(
              child: Text("No advertisement post"),
            )
          ],
        )
    );
  }
}
