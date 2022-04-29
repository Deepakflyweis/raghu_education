// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/widgets/constant.dart';

class AboutCourse extends StatelessWidget {
  AboutCourse({
    Key? key,
    required this.time,
  }) : super(key: key);
  String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
      ),
      child: Column(children: [
        PhysicalModel(
          color: Colors.blueGrey,
          elevation: 7,
          borderRadius: BorderRadius.all(
            Radius.circular(7),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 2.3.w,
              vertical: 1.h,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
                color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Course Breif",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 0.7.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.timelapse_outlined,
                      size: 4.h,
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Timimg",
                          style: TextStyle(
                              color: Colors.grey[700], fontSize: 10.sp),
                        ),
                        Text(
                          "$time hours",
                          style:
                              TextStyle(color: primaryColor, fontSize: 12.sp),
                        )
                      ],
                    ),
                    SizedBox(width: 16.4.w),
                    Icon(
                      Icons.tv,
                      color: primaryColor,
                      size: 4.h,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Videos",
                          style: TextStyle(
                              color: Colors.grey[700], fontSize: 10.sp),
                        ),
                        Text(
                          "35",
                          style:
                              TextStyle(color: primaryColor, fontSize: 12.sp),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.security,
                      size: 4.h,
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Accessibility",
                          style: TextStyle(
                              color: Colors.grey[700], fontSize: 10.sp),
                        ),
                        Text(
                          "Lifetime",
                          style:
                              TextStyle(color: primaryColor, fontSize: 12.sp),
                        )
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.calendar_today,
                      color: primaryColor,
                      size: 4.h,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Course Updated",
                          style: TextStyle(
                              color: Colors.grey[700], fontSize: 10.sp),
                        ),
                        Text(
                          "10th Nov'2021",
                          style:
                              TextStyle(color: primaryColor, fontSize: 12.sp),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        PhysicalModel(
          color: Colors.blueGrey,
          elevation: 7,
          borderRadius: BorderRadius.all(
            Radius.circular(7),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 2.3.w,
              vertical: 1.h,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
                color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 1.h,
                ),

                Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'''),
                SizedBox(
                  height: 3.h,
                )

              ],
            ),
          ),
        ),
      ]),
    );
  }
}
