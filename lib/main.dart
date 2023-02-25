import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobkarlite/view/home.dart';
import 'package:jobkarlite/viewmodel/user_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final system = SystemUiOverlayStyle(
      statusBarColor: UserController.color,
      systemNavigationBarColor: UserController.color6);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(system);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Future Lite",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: AppBarTheme(
          titleSpacing: 0.0,
          backgroundColor: UserController.color,
          elevation: 0,
          shadowColor: UserController.color4,
          titleTextStyle: UserController.style1,
        ),
      ),
      home: const Home(),
    );
  }
}
