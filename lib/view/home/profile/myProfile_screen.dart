// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/widgets/app_bar.dart';
import 'package:raghu_education/widgets/constant.dart';

class MyProfilescreen extends StatelessWidget {
  const MyProfilescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBDE0FF),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 8.h,
              child: Container(
                height: 22.h,
                width: 30.w,
                decoration: BoxDecoration(
                    color: const Color(0xFF62B4FF).withOpacity(0.3),
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
                    color: const Color(0xFF62B4FF).withOpacity(0.3),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8))),
              ),
            ),
            Positioned(
              top: 13.h,
              right: 0.w,
              child: Container(
                height: 8.h,
                width: 16.w,
                decoration: BoxDecoration(
                    color: const Color(0xFF62B4FF).withOpacity(0.3),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8))),
              ),
            ),
            Positioned(
              top: 8.h,
              right: 5.w,
              child: Container(
                height: 8.h,
                width: 16.w,
                decoration: BoxDecoration(
                    color: const Color(0xFF62B4FF).withOpacity(0.3),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8))),
              ),
            ),
            Positioned(
              bottom: 8.h,
              right: 10.w,
              child: Container(
                height: 18.h,
                width: 30.w,
                decoration: BoxDecoration(
                    color: const Color(0xFF62B4FF).withOpacity(0.3),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8))),
              ),
            ),
            Positioned(
              bottom: 11.h,
              right: 15.w,
              child: Container(
                height: 18.h,
                width: 30.w,
                decoration: BoxDecoration(
                    color: const Color(0xFF62B4FF).withOpacity(0.3),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 12.h, bottom: 3.h, right: 5.w, left: 5.w),
              child: SizedBox(
                  child: Container(
                decoration: const BoxDecoration(
                    color: secondryColor,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          height: 12.h,
                          width: 30.w,
                          decoration: const BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10),
                              ),
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    "https://www.rollingstone.com/wp-content/uploads/2018/06/mike-shinoda-life-after-chester-read-2018-12263061-bea1-462a-9731-2aed544b594f.jpg",
                                  ))),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "Username",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            const Icon(
                              Icons.edit,
                              color: Colors.grey,
                            ),
                            Text(
                              "_ edit",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 12.sp),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "All Access",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5.h),
                        Container(
                          height: 7.h,
                          width: 86.w,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5.w, color: primaryColor),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(8))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: primaryColor,
                                  size: 4.h,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  "Mobile Number",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.sp),
                                ),
                                const Spacer(),
                                Text(
                                  "1234567890",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          height: 7.h,
                          width: 86.w,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5.w, color: primaryColor),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(8))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.security,
                                  color: primaryColor,
                                  size: 4.h,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  "Password",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.sp),
                                ),
                                const Spacer(),
                                Text(
                                  "******",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          height: 7.h,
                          width: 86.w,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5.w, color: primaryColor),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(8))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  color: primaryColor,
                                  size: 4.h,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  "Email",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.sp),
                                ),
                                const Spacer(),
                                Text(
                                  "xyz@gmail.com",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          height: 7.h,
                          width: 86.w,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5.w, color: primaryColor),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(8))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Row(
                              children: [
                                ImageIcon(
                                  const AssetImage(
                                    "assets/images/globe.png",
                                  ),
                                  size: 4.h,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  "Social",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.sp),
                                ),
                                const Spacer(),
                                Text(
                                  "facebook//username",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My Course (3)",
                              style: TextStyle(
                                color: texxtcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              width: 56.w,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          height: 26.h,
                          width: 86.w,
                          decoration: const BoxDecoration(
                              color: const Color(0xFFEFEFEF),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(10)),
                              boxShadow: [
                                const BoxShadow(
                                    color: Colors.blueGrey, blurRadius: 5)
                              ]),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 85.w,
                                    height: 20.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://www.h2kinfosys.com/storage/2021/02/java-training.jpg"))),
                                  ),
                                  Positioned(
                                      left: 2.w,
                                      bottom: 6.w,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Completion Progress",
                                            style: TextStyle(
                                                color: secondryColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.sp),
                                          ),
                                        SizedBox(
                                          width: 14.w,
                                        ),
                                          Text(
                                            "50% Completed",
                                            style: TextStyle(
                                                color: secondryColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.sp),
                                          )
                                        ],
                                      )),
                                  Positioned(
                                    bottom: 2.h,
                                    left: 2.w,
                                    child: SizedBox(
                                      width: 80.w,
                                      height: 0.7.h,
                                      child: LinearProgressIndicator(
                                        backgroundColor: Colors.white,
                                        color: Colors.lightGreen,
                                        value: 0.3,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Course Name",
                                    style: TextStyle(
                                      color: texxtcolor,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Duration of course-18h",
                                    style: TextStyle(
                                      color: texxtcolor,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            PhysicalModel(
                              color: Colors.blueGrey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              elevation: 10,
                              child: Container(
                                height: 6.h,
                                width: 55.w,
                                decoration: BoxDecoration(
                                    color: Color(0xFFEFEFEF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Row(
                                  children: [
                                    Center(
                                      child: Text(
                                        "Continue where you left off",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 11.sp),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.play_circle_fill_rounded)
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            PhysicalModel(
                              color: Colors.blueGrey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              elevation: 10,
                              child: Container(
                                height: 6.h,
                                width: 25.w,
                                decoration: BoxDecoration(
                                    color: Color(0xFFEFEFEF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Row(
                                  children: [
                                    Center(
                                      child: Text(
                                        "Start Over",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 11.sp),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.restart_alt)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        PhysicalModel(
                          color: Colors.blueGrey,
                          elevation: 5,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Container(
                            height: 7.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Logout",
                                style: TextStyle(
                                  color: secondryColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        )
                      ],
                    ),
                  ),
                ),
              )),
            ),
            Positioned(
                top: 0,
                child: App_Bar(
                    icon: InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back_ios,
                      color: secondryColor,
                      size: 3.h,
                      ),
                    ),
                    title: 'Profile',
                    image1: const Spacer(),
                    image2: Icon(
                      Icons.settings,
                      color: secondryColor,
                      size: 3.h,
                    )))
          ],
        ),
      ),
    );
  }
}
