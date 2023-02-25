import 'package:flutter/material.dart';

class AllEvents extends StatefulWidget {
  const AllEvents({Key? key}) : super(key: key);

  @override
  State<AllEvents> createState() => _AllEventsState();
}

class _AllEventsState extends State<AllEvents> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children:const [
            Center(
              child: Text("No events post"),
            )
          ],
        )
    );
  }
}
