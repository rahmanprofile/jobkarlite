import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobkarlite/view/component/input_box.dart';
import 'package:jobkarlite/view/home.dart';
import 'package:jobkarlite/viewmodel/signin.dart';
import '../view/component/box_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final system = SystemUiOverlayStyle(statusBarColor: Colors.grey[200]);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(system);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Sign Up",
                  style: GoogleFonts.lato(
                      color: Colors.black54,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Join the India's community",
                  style: GoogleFonts.lato(
                      color: Colors.black87,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 25.0),
                InputBox(
                  title: 'Name',
                  icon: CupertinoIcons.person_fill,
                  controller: _nameController,
                ),
                const SizedBox(height: 8.0),
                InputBox(
                  title: 'Phone',
                  icon: CupertinoIcons.phone_fill,
                  controller: _phoneController,
                ),
                const SizedBox(height: 8.0),
                InputBox(
                  title: 'Email',
                  icon: CupertinoIcons.mail_solid,
                  controller: _emailController,
                ),
                const SizedBox(height: 8.0),
                InputBox(
                  title: 'Password',
                  icon: CupertinoIcons.padlock_solid,
                  controller: _passwordController,
                ),
                const SizedBox(height: 35.0),
                BoxButton(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                  },
                  title: 'SignUp',
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have account ? ",
                      style: GoogleFonts.lato(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignIn(),
                          ),
                        );
                      },
                      child: Text(
                        "SignIn",
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
}
