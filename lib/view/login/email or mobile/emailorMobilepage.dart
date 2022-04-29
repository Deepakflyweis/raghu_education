import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/login/email%20or%20mobile/checkEmail%20controller/checkemailController.dart';
import 'package:raghu_education/widgets/constant.dart';
import 'package:raghu_education/widgets/testFields_helper.dart';
class EmailorMobile extends StatelessWidget {
   EmailorMobile({ Key? key }) : super(key: key);


   CheckEmailController _emailController = Get.put(CheckEmailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: primaryColor,
      body: SafeArea(child: Form(
        key: _emailController.checkEmailkey,
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
                                  "assets/images/secure.png",
                                  height: 7.h,
                                ),
                               
                             
                              ],
                            ),
                            SizedBox(
                              height: 2.h
                              ,
                            ),
                            Center(
                              child: Text("Please Verify Your Identity",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w800
                              ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text("Email Address/Mobile Number",
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Textfields(controller: _emailController.email, validator: _emailController.emailValidator ,label: "Email ID/Mobile Number"),
                             SizedBox(
                              height: 2.h,
                            ),
                             InkWell(
                              onTap: () {
                               _emailController.checkEmail();
                              },
                              child: Container(
                              height: 7.h,
                              width: 100.w,
                              decoration: const BoxDecoration(
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
      )),
    );
  }
}