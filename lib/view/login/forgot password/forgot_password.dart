// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:raghu_education/controller/forgot_password.dart';
import 'package:raghu_education/controller/login_Controller.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/widgets/constant.dart';
import 'package:raghu_education/widgets/testFields_helper.dart';

class FogotPassword extends StatelessWidget {
  FogotPassword({Key? key}) : super(key: key);

  ForgotPasswordcontroller _forgotPasswordcontroller = Get.put(ForgotPasswordcontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Form(
          key: _forgotPasswordcontroller.passwordformKey,
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
                          Center(
                            child: Image.asset(
                              "assets/images/lock.png",
                              height: 10.h,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            """A reset password has been sent to your
authorized email address or Mobile
Number""",
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            "New Password",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 0.7.h,
                          ),
                          Textfields(
                              controller:_forgotPasswordcontroller.password,
                              validator: _forgotPasswordcontroller.passwordValiadation,
                              label: "Enter Password"),
                               SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            "Reset Password",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 0.7.h,
                          ),
                          Textfields(
                              controller: _forgotPasswordcontroller.confirm,
                              validator: _forgotPasswordcontroller.confirmPassword,
                              label: "Enter Password"),
                              SizedBox(
                                height: 3.h,
                              ),
                          InkWell(
                            onTap: () {
                              _forgotPasswordcontroller.checkPassword();
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
                                  "RESET",
                                  style: TextStyle(
                                    color: secondryColor,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                           SizedBox(
                            height: 7.h,
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
