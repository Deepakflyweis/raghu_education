// ignore_for_file: prefer_const_constructors

import 'package:lottie/lottie.dart';
import 'package:raghu_education/controller/onboard_controller.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/widgets/constant.dart';

class OnboardingScren extends StatelessWidget {
  OnboardingScren({Key? key}) : super(key: key);

  List<String> animate = [
    "assets/images/88367-students-jumping.json",
    "assets/images/18365-animaton-for-e-learning-web-site.json",
    "assets/images/69113-student.json",
    "assets/images/80356-online-learning.json",
  ];
  List<String> title = [
    "Learn from the best",
    "Explore a range of topic",
    "Explore a range of topic",
    "Explore a range of topic",
  ];
  List<String> subtitile = [
    "Learn all the courses from the best teachers online",
    "Access to all 1000+ courses",
    "Access to all 1000+ courses",
    "Access to all 1000+ courses"
  ];
  OnboardController onboardController = Get.put(OnboardController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 7.h,
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
            top: 20.h,
            left: 5.w,
            child: Stack(
              children: [
                Container(
                  height: 70.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: secondryColor,
                      borderRadius: BorderRadius.all(Radius.circular(14))),
                  child: PageView.builder(
                    controller: onboardController.controller,
                    onPageChanged: onboardController
                        .onPageChanges,
                    itemCount: animate.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Lottie.asset(animate[index],
                              height: 40.h, width: 50.w),
                          Text(
                            title[index],
                            style: TextStyle(
                                color: primaryColor,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Center(
                            child: Text(
                              subtitile[index],
                              style: TextStyle(
                                  fontSize: 11.sp, fontWeight: FontWeight.w500),
                            ),
                          ).paddingSymmetric(horizontal: 3.w)
                        ],
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 15.h,
                  left: 20.w,
                  // right: 30.w,
                  child: Obx(() => Row(
                        children: [
                          Container(
                              height: 1.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                  color: onboardController.currentPage.value == 0
                                      ? primaryColor
                                      : bgOnbard,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                              height: 1.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                  color: onboardController.currentPage.value == 1
                                      ? primaryColor
                                      : bgOnbard,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                          SizedBox(
                            width: 2.w,
                          ),
                       
                          Container(
                              height: 1.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                  color: onboardController.currentPage.value == 2
                                      ? primaryColor
                                      : bgOnbard,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                           SizedBox(
                            width: 2.w,
                          ),
                          Container(
                              height: 1.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                  color: onboardController.currentPage.value == 3
                                      ? primaryColor
                                      : bgOnbard,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))))
                        ],
                      )),
                ),
                Positioned(
                  bottom: 3.h,
                  left: 30.w,
                  child: InkWell(
                    onTap: () {
                      onboardController.netxPage();
                    },
                    child: Container(
                        height: 7.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Center(
                          child: Text("Skip",
                              style: TextStyle(
                                  color: secondryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp)),
                        )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
