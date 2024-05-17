import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../const/color.dart';
import 'login.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
     return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg1.jpg')
              )
          ),

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
                "Forgot Password?",
                style: GoogleFonts.nunitoSans(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: height*0.4,
                width: width*0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height*0.04,
                    ),
                    Text('Enter Email',style: GoogleFonts.nunitoSans(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                    ),),
                    SizedBox(
                      height: height*0.04,
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
                            height: height*0.1,
                          ),
                          InkWell(
                            onTap: (){

                            },
                            child: Container(
                              height: height*0.05,
                              width: width*0.5,
                              decoration: BoxDecoration(
                                  color: AppColor.blueColor,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Text('Send',style: GoogleFonts.nunitoSans(
                                    color:Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18
                                ),),
                              ),
                            ),
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
              Text('Don\'t have any Issue?',style: GoogleFonts.nunitoSans(
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
      ),
     );
  }
}
