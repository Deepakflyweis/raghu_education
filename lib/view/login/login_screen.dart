// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:raghu_education/controller/login_Controller.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/home/bottom%20bar/bottom_bar_screen.dart';
import 'package:raghu_education/view/login/email%20or%20mobile/emailorMobilepage.dart';
import 'package:raghu_education/view/login/forgot%20password/forgot_password.dart';
import 'package:raghu_education/view/signUp/signup_screen.dart';
import 'package:raghu_education/widgets/constant.dart';
import 'package:raghu_education/widgets/testFields_helper.dart';
class LoginScreen extends StatelessWidget {
   LoginScreen({ Key? key }) : super(key: key);

   LoginController _loginController = Get.put(LoginController());
  
   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Form(
          key: _loginController.signinkey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                           
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Center(
                            child: Text(
                              "SIGN IN",
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
                              controller: _loginController.email,
                              validator:_loginController.emailvalidation,
                              label: "Email Address/Mobile Number"),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Password",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 0.7.h,
                          ),
                          Textfields(
                              controller: _loginController.password,
                              validator: _loginController.passwordvalidation,
                              label: "Enter Password"),
                          //     SizedBox(
                          //   height: 0.32.h,
                          // ),
                          InkWell(
                            onTap: (){
                              Get.to(()=>EmailorMobile() );
                            },
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text("Forgot Password?",
                               style: TextStyle(
                                    color: primaryColor, fontSize: 11.sp),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                         
                          InkWell(
                            onTap: () {
                            _loginController.checklogin();

                           // Get.offAll(() => BottomNavBarscreen());
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
                          Center(
                            child: TextButton(
                              onPressed: () => Get.offAll(() =>SignupScreen()),
                              child: Text(
                                "Don't  have an account? Sign up",
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
