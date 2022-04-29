// ignore_for_file: prefer_const_constructors

import 'package:raghu_education/controller/signup_controller.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/login/login_screen.dart';
import 'package:raghu_education/widgets/constant.dart';
import 'package:raghu_education/widgets/testFields_helper.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  SignupController _signupController = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Form(
          key: _signupController.signUpkey,
          child: Stack(
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(
                    child: Text(
                      "LOGO",
                      style: TextStyle(
                        color: secondryColor,
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                top: 8.h,
                child: Container(
                  height: 22.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF62B4FF).withOpacity(0.3),
                      // ignore: prefer_const_constructors
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
              Positioned(
                top: 10.h,
                child: Container(
                  height: 22.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF62B4FF).withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
              Positioned(
                top: 13.h,
                right: 0.w,
                child: Container(
                  height: 8.h,
                  width: 16.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF62B4FF).withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
              Positioned(
                top: 8.h,
                right: 5.w,
                child: Container(
                  height: 8.h,
                  width: 16.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF62B4FF).withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
              Positioned(
                bottom: 8.h,
                right: 10.w,
                child: Container(
                  height: 18.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF62B4FF).withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
              Positioned(
                bottom: 11.h,
                right: 15.w,
                child: Container(
                  height: 18.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF62B4FF).withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
              Positioned(
                top: 13.h,
                left: 5.w,
                child: Container(
                  height: 80.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: secondryColor,
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 34.w,
                              ),
                              Image.asset(
                                "assets/images/signup.png",
                                height: 7.h,
                              ),
                              Spacer(),
                              Text(
                                "Sign Up Later",
                                style: TextStyle(
                                    color: texxtcolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.sp),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Center(
                            child: Text(
                              "SIGN UP",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            "Email Address/Mobile Number",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 0.7.h,
                          ),
                          Textfields(
                              controller: _signupController.email,
                              validator: _signupController.emailvalidation,
                              label: "Email Address/Mobile Number"),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Create Password",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 0.7.h,
                          ),
                          Textfields(
                              controller: _signupController.password,
                              validator: _signupController.passwordvalidation,
                              label: "Enter Password"),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Confirm Password",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 0.7.h,
                          ),
                          Textfields(
                            
                              controller: _signupController.confirmPassword,
                              validator:
                                  _signupController.confirmPassworValidation,
                              label: "Confirm Password"),
                          SizedBox(
                            height: 2.h,
                          ),
                          InkWell(
                            onTap: () {
                              _signupController.checklogin();
                            },
                            child: Container(
                              height: 7.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Center(
                                child: Text(
                                  "Continue",
                                  style: TextStyle(
                                    color: secondryColor,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Get.to(()=> LoginScreen());
                            },
                            child: Center(
                              child: Text(
                                "Already have an account? Sign in",
                                style: TextStyle(
                                    color: primaryColor, fontSize: 11.sp),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.5.h,
                          ),
                          Center(
                            child: Text(
                              "OR",
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 11.sp),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Sign in with",
                              style: TextStyle(
                                  color: primaryColor, fontSize: 11.sp),
                            ),
                          ),
                          // Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Image.asset("assets/images/google.png",
                            height: 10.h
                            ),
                        SizedBox(
                          width: 10.w,
                        ),
                            Image.asset("assets/images/linkedin.png",
                            height: 6.7.h,),
                           SizedBox(
                          width: 10.w,
                        ),
                            Image.asset("assets/images/meta.png",
                            height: 10.h,
                            ),
                          ]),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 16.w,
                              ),
                            Text.rich(TextSpan(children: [TextSpan(text: ''''By signing in you agree to our''',
                            style: TextStyle(
                              color: primaryColor
                            ),
                            ),
                           
                            ]))
                            ],
                          ),
                            Row(
                            children: [
                              SizedBox(
                                width: 24.w,
                              ),
                            Text.rich(TextSpan(children: [
                               TextSpan(
                              text: """terms and conditions""",
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline
                              )
                            )
                           
                            ]))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 1.h,
                left: 40.w,
                child: Text(
                  "version 1.0",
                  style: TextStyle(
                    color: secondryColor,
                    fontSize: 11.sp,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
