import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../const/color.dart';
import '../../navbar.dart';
import '../home/homescreen.dart';
import 'SignUpScreen.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    height: height * 0.07,
                  ),
                  Image.asset('assets/images/bookai.png'),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    "Welcome Back !",
                    style: GoogleFonts.nunitoSans(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: height*0.55,
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
                        Text('Login Account',style: GoogleFonts.nunitoSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20
                        ),),
                        SizedBox(
                          height: height*0.03,
                        ),
                        Form(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 14, right: 14),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'Email',
                                      prefixIcon: Icon(Icons.email_outlined)

                                  ),
                                  style:
                                  const TextStyle(color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: height*0.03,
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
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                  const ForgotPasswordScreen()
                                  )
                                  );
                                },
                                child: Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Padding(
                                    padding:EdgeInsets.only(left: width*0.06,top: height*0.01),
                                    child: Text('Forgot Password?',style: GoogleFonts.nunitoSans(
                                      color: Colors.blue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height*0.05,
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const NavBarScreen()));
                                },
                                child: Container(
                                  height: height*0.05,
                                  width: width*0.5,
                                  decoration: BoxDecoration(
                                    color: AppColor.blueColor,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(
                                    child: Text('Login',style: GoogleFonts.nunitoSans(
                                      color:Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18
                                    ),),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height*0.03,
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
                    height: height*0.04,
                  ),
                  Text('Don\'t have any account?',style: GoogleFonts.nunitoSans(
                    color: Colors.black,
                    fontSize: 18
                  ),),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp()));
                    },
                    child: Text('Register',style: GoogleFonts.nunitoSans(
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

// class CurvePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint();
//     paint.color = AppColor.blueColor;
//     paint.style = PaintingStyle.fill;
//
//     var path = Path();
//     path.moveTo(0, size.height * 0.6); // Adjusted the starting point to match the blue container height
//     path.quadraticBezierTo(
//         size.width * 0.5, size.height * 0.7, size.width, size.height * 0.6); // Adjusted curve accordingly
//     path.lineTo(size.width, 0);
//     path.lineTo(0, 0);
//
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
//




class MyPainter extends CustomPainter {
  final bool isTopRight;

  MyPainter({required this.isTopRight});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white.withOpacity(0.5);

    // Draw first circle
    if (isTopRight) {
      canvas.drawCircle(Offset(size.width - 40, 20), 30, paint);
    } else {
      canvas.drawCircle(Offset(40, size.height - 20), 30, paint);
    }

    // Draw second circle
    if (isTopRight) {
      canvas.drawCircle(Offset(size.width - 20, 40), 30, paint);
    } else {
      canvas.drawCircle(Offset(20, size.height - 40), 30, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
