import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../const/color.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: width,
              height: height,

              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg1.jpg')
                  )
              ),
            ),
            // Positioned(
            //   top: 0,
            //   right: 0,
            //   child: CustomPaint(
            //     size: const Size(100, 100),
            //     painter: MyPainter(isTopRight: true),
            //   ),
            // ),
            // Positioned(
            //   bottom: 0,
            //   left: 0,
            //   child: CustomPaint(
            //     size: const Size(100, 100),
            //     painter: MyPainter(isTopRight: false),
            //   ),
            // ),

            // CustomPaint(
            //   size: Size(width, height),
            //   painter: CurvePainter(),
            // ),
            SizedBox(
              width: width,
              height: height,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Image.asset('assets/images/bookai.png'),
                  Text(
                    "Welcome To Mr. Book",
                    style: GoogleFonts.nunitoSans(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: height*0.65,
                    width: width*0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height*0.02,
                        ),
                        Text('Create Account',style: GoogleFonts.nunitoSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                        ),),
                        SizedBox(
                          height: height*0.01,
                        ),
                        Form(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 14, right: 14),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: 'Username',
                                      prefixIcon: Icon(Icons.person_outline)

                                  ),
                                  style:
                                  const TextStyle(color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: height*0.01,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14, right: 14),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: 'Email',
                                      prefixIcon: Icon(Icons.mail_outline)
                                  ),
                                  style:
                                  const TextStyle(color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: height*0.01,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14, right: 14),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: 'ID Address',
                                      prefixIcon: Icon(Icons.privacy_tip)
                                  ),
                                  style:
                                  const TextStyle(color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: height*0.01,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14, right: 14),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: 'Phone',
                                      prefixIcon: Icon(Icons.phone_outlined)
                                  ),
                                  style:
                                  const TextStyle(color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: height*0.01,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14, right: 14),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: 'Password',
                                      prefixIcon: Icon(Icons.lock_outline_rounded)
                                  ),
                                  style:
                                  const TextStyle(color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: height*0.03,
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));

                                },
                                child: Container(
                                  height: height*0.05,
                                  width: width*0.5,
                                  decoration: BoxDecoration(
                                      color: AppColor.blueColor,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(
                                    child: Text('Sing Up',style: GoogleFonts.nunitoSans(
                                        color:Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18
                                    ),),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height*0.02,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Container(
                                      height: 1, // Height of the line
                                      width: 90, // Width of the line
                                      color: Colors.black, // Color of the line
                                    ),
                                  ),
                                  Text('Or', style: GoogleFonts.nunitoSans(
                                      color: Colors.black,
                                      fontSize: 15
                                  )), // Sign
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      height: 1, // Height of the line
                                      width: 90, // Width of the line
                                      color: Colors.black, // Color of the line
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height*0.03,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 38,
                                    width: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: const Icon(FontAwesomeIcons.facebookF,size: 25,color: Colors.blue,),
                                  ),

                                  Container(
                                    height: 38,
                                    width: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: const Icon(FontAwesomeIcons.google,size: 25,color: Colors.red,),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height*0.03,
                  ),
                  Text('Already have any account?',style: GoogleFonts.nunitoSans(
                      color: Colors.black,
                      fontSize: 18
                  ),),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                    },
                    child: Text('Login',style: GoogleFonts.nunitoSans(
                        color: AppColor.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w800
                    ),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
