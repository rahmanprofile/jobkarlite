import 'package:flutter/material.dart';

class AllJobs extends StatefulWidget {
  const AllJobs({Key? key}) : super(key: key);

  @override
  State<AllJobs> createState() => _AllJobsState();
}

class _AllJobsState extends State<AllJobs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children:const [
            Center(
              child: Text("No jobs post"),
            )
          ],
        )
    );
  }
}
