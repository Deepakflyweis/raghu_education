// ignore_for_file: must_be_immutable, unused_field, prefer_final_fields, prefer_const_constructors, duplicate_ignore

import 'package:raghu_education/controller/splash_controller.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/widgets/constant.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);
  SplashController _splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("LOGO",
                style: TextStyle(
                  color: secondryColor,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                ),
                ))
              ],
            ),
            Positioned(
              top: 10.h,
              child: Container(
                height: 22.h,
                width: 30.w,
                decoration: BoxDecoration(
                  color:Color(0xFF62B4FF).withOpacity(0.3),
                  // ignore: prefer_const_constructors
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
              ),
            ),
             Positioned(
              top: 13.h,
              
              child: Container(
                height: 22.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color:Color(0xFF62B4FF).withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
              ),
            ),
             Positioned(
              top: 13.h,
              right: 0.w,
              
              child: Container(
                height: 8.h,
                width: 16.w,
                decoration: BoxDecoration(
                  color:Color(0xFF62B4FF).withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
              ),
            ),
             Positioned(
              top:8.h,
              right: 5.w,
              
              child: Container(
                height: 8.h,
                width: 16.w,
                decoration: BoxDecoration(
                  color:Color(0xFF62B4FF).withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
              ),
            ),
              Positioned(
              bottom:8.h,
              right: 10.w,
              
              child: Container(
                height: 18.h,
                width: 30.w,
                decoration: BoxDecoration(
                  color:Color(0xFF62B4FF).withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
              ),
            ),
            Positioned(
              bottom:11.h,
              right: 15.w,
              
              child: Container(
                height: 18.h,
                width: 30.w,
                decoration: BoxDecoration(
                  color:Color(0xFF62B4FF).withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
