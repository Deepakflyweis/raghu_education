import 'package:raghu_education/api%20provider/api_client.dart';
import 'package:raghu_education/api%20provider/providers/forgot_pswd_otp_provider.dart';
import 'package:raghu_education/controller/virfy_controller.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/login/email%20or%20mobile/checkEmail%20controller/checkemailController.dart';
import 'package:raghu_education/view/login/forgot%20password/forgot_password.dart';
import 'package:raghu_education/widgets/constant.dart';
import 'package:raghu_education/widgets/otpInput.dart';




class VerifyEmail extends StatelessWidget {
   VerifyEmail({ Key? key }) : super(key: key);
OtpTimerController _otpTimerController = Get.put(OtpTimerController());
   CheckEmailController _emailController = Get.put(CheckEmailController());



  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Form(
          // key: _loginController.signinkey,
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
                              "assets/images/secure.png",
                              height: 7.h,
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Center(
                            child: Text(
                              "Verify",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Center(
                            child: Text(
                              """Enter the verification code that we have sent
on your mail address/ Mobile Number""",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12.sp),
                            ),
                          ),
                          SizedBox(
                            height: 13.h,
                          ),
                                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        for(int i = 0; i <6; i++)
                    OtpInput(controller:_otpTimerController.otp[i], autoFocus: i == 0? true: false )
                    ],
                  ),

                  
                        Row(
                        children: [
                          TextButton(
                            onPressed: () {
                               resend();
                            },
                            child: const Text("Resend",
                            style: TextStyle(
                              color: Color(0xFF253AC9)
                            ),
                            ),
                          ),

                          Spacer(),
                            Obx(()=> Text(_otpTimerController.elapsedTime.value))
                    ],
                  ),
                  SizedBox(
                    height: 3.7.h,
                  ),
                          InkWell(
                            onTap: () {
                                _otpTimerController.otpdigits();
                Get.to(()=> FogotPassword());
                   _otpTimerController.result= "";
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
                          SizedBox(
                            height: 14.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 16.w,
                              ),
                              Text.rich(TextSpan(children: [
                                TextSpan(
                                  text: ''''By signing in you agree to our''',
                                  style: TextStyle(color: primaryColor),
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
                                        decoration: TextDecoration.underline))
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
    resend() async{
     Client _client = Client();
     ForgetPasswordProvider _forgetPasswordProvider = ForgetPasswordProvider(client : _client.init());
     _forgetPasswordProvider.reSendOTP(_otpTimerController.otp.toString());

   }
}