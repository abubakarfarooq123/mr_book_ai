import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_book_ai/Screens/User/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late Animation _logoAnimation;
  late AnimationController _logoController;

  @override
  void initState() {
    _logoController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _logoAnimation = CurvedAnimation(
      parent: _logoController,
      curve: Curves.easeIn,
    );

    _logoAnimation.addListener(() {
      if (_logoAnimation.status == AnimationStatus.completed) {
        return;
      }
      setState(() {});
    });

    _logoController.forward();
    super.initState();
    startTime();
  }

  Widget _buildLogo() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: _logoAnimation.value * 400.0,
            width: _logoAnimation.value * 400.0,
            child: Image.asset("assets/images/bookai.png"),
          ),
          Text(
            "Mr. Book",
            style: GoogleFonts.nunitoSans(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 22),
          ),
          Text(
            "An AI Smart Chat",
            style: GoogleFonts.nunitoSans(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
          ),

        ],
      ),
    );
  }

  void navigationPage() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, navigationPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg1.jpg')
              )
          ),
          child: _buildLogo()),
    );
  }
}
