// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/home/home_page/notification/notification.dart';
import 'package:raghu_education/view/home/my_course/my%20course%20details/about%20course/about_course.dart';
import 'package:raghu_education/view/home/my_course/my%20course%20details/course%20lecture/course_lecture.dart';
import 'package:raghu_education/view/home/my_course/my%20course%20details/course%20ratings/course_ratings.dart';
import 'package:raghu_education/widgets/app_bar.dart';
import 'package:raghu_education/widgets/constant.dart';

class MyCourseDetails extends StatelessWidget {
  MyCourseDetails(
      {Key? key,
      required this.course,
      required this.instructor,
      required this.img,
      required this.rating,
      required this.time})
      : super(key: key);
  final course;
  final instructor;
  final img;
  int rating;
  String time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: SafeArea(
            child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 8.h,
                ),
                Image.network(
                  img,
                ),
                SizedBox(height: 12.h),
                Expanded(
                  child: TabBarView(children: [
                    AboutCourse(time: time),
                    CourseLecture(

                      rating: rating,
                      course: course,
                      instructor: instructor
                    ),
                    CourseRating(
                      rating: rating
                    )
                  ]),
                )
              ],
            ),
            Positioned(
                top: 27.h,
                left: 5.w,
                right: 5.w,
                child: PhysicalModel(
                  color: Colors.blueGrey,
                  elevation: 10,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 2.w,
                        vertical: 1.h,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.sp),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "- by $instructor",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: Colors.grey,
                                    fontStyle: FontStyle.italic),
                              ),
                              Spacer(),
                              Container(
                                height: 3.h,
                                width: 13.w,
                                color: Color(0xFFE5C231),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "$rating",
                                        style: TextStyle(
                                            color: Color(0xFF614E01),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13.sp),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 2.3.h,
                                        color: Color(0xFF614E01),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          TabBar(
                              labelColor: Colors.blue,
                              unselectedLabelColor: Colors.grey,
                              tabs: [
                                Tab(
                                  child: Text(
                                    "About",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "Videos",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "Ratings",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                )
                              ])
                        ],
                      ),
                    ),
                  ),
                )),
            App_Bar(
                icon: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 3.h,
                    color: Colors.white,
                  ),
                ),
                title: "My Course",
                image1: Image.asset("assets/images/bell.png",
                height: 4.h,
                ),
                image2:Container(
                    height: 5.h,
                    width: 5.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.complex.com/complex/images/c_fill,dpr_auto,f_auto,q_auto,w_1400/fl_lossy,pg_1/j6teixhgksmh0v0y9f5i/the-game-accuser-awarded-control-over-his-record-label?fimg-ssr"),))
                        )),
                   ],
        )),
      ),
    );
  }
}
