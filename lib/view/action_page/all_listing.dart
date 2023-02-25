import 'package:flutter/material.dart';

class AllListing extends StatefulWidget {
  const AllListing({Key? key}) : super(key: key);

  @override
  State<AllListing> createState() => _AllListingState();
}

class _AllListingState extends State<AllListing> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children:const [
            Center(
              child: Text("No listing post"),
            )
          ],
        )
    );
  }
}
