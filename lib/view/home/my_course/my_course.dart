import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/home/home_page/notification/notification.dart';
import 'package:raghu_education/view/home/my_course/my%20course%20details/mycourse_details_screen.dart';
import 'package:raghu_education/view/home/my_course/my%20course%20model/my_course_model.dart';
import 'package:raghu_education/widgets/app_bar.dart';
import 'package:raghu_education/widgets/constant.dart';

class MyCourseScreen extends StatelessWidget {
  MyCourseScreen({Key? key}) : super(key: key);

  List<MyCourseModel> myCourse = [
    MyCourseModel(
        course: "Java Programming Beginner Course - I",
        img: "https://hackr.io/blog/best-java-courses/thumbnail/large",
        instructor: "Preet",
        rating: 4,
        time: "14 h"),
    MyCourseModel(
        course: "Java Programming Beginner Course - I",
        img: "https://hackr.io/blog/best-java-courses/thumbnail/large",
        instructor: "Preet",
        rating: 4,
        time: "14 h")
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  ListView.builder(
                      itemCount: myCourse.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(
                              onTap: (){
                                Get.to(()=> MyCourseDetails(
                                  course : myCourse[index].course!,
                                  instructor : myCourse[index].instructor!,
                                  img: myCourse[index].img!,
                                  rating: myCourse[index].rating!,
                                  time: myCourse[index].time!

                                ));
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.w),
                                child: PhysicalModel(
                                  color: Colors.white,
                                  elevation: 5,
                                  child: Container(
                                    
                                    height: 14.h,
                                    width: 100.w,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Row(children: [
                                
                                       Container(
                                                            height: 12.h,
                                                            width: 30.w,
                                                            decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                          myCourse[index].img!
                                        )
                                           )),
                                                          ),
                                
                                                          SizedBox(
                                                            width: 2.w
                                                          ),
                                                          Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                  SizedBox(
                                    width: 60.w,
                                    child: Text(myCourse[index].course!,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w800,
                                      
                                    ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h
                                    ,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                
                                      Text("- ${myCourse[index].instructor}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13.sp,
                                        fontStyle: FontStyle.italic
                                      ),
                                      ),
                                   SizedBox(
                                     width: 25.w,
                                   ),
                                      SizedBox(
                                       height: 3.h,
                                    width: 20.w,
                                        child: ListView.builder(
                                          itemCount: myCourse[index].rating,
                                            scrollDirection: Axis.horizontal,
                                       
                                          itemBuilder: (context, i){
                                         return Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 1.5.h,
                                          );
                                        }),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Row(
                                                          
                                    children: [
                                
                                      Text("Total Course Duraction-${myCourse[index].time}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 9.sp,
                                        fontStyle: FontStyle.italic
                                      ),
                                      ),
                                   SizedBox(
                                     width: 1.w,
                                   ),
                                   Container(
                                     height: 4.h,
                                     width: 20.w,
                                     decoration: const BoxDecoration(
                                       color: primaryColor,
                                       borderRadius: BorderRadius.all(Radius.circular(3))
                                
                                     ),
                                     child: Center(
                                       child: Text("Continue",
                                       style: TextStyle(
                                         color: secondryColor,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 9.sp
                                       ),
                                       ),
                                     ),
                                   )  
                                    ],
                                  )
                                                            ],
                                                          )
                                
                                    ],),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            )
                          ],
                        );
                      })
                ],
              ),
              App_Bar(
                 icon: InkWell(
                      onTap: (){
                      
                      },
                      child: Icon(Icons.sort,
                      color: secondryColor,
                      size: 3.h,
                      ),
                    ),
                  title: 'My Courses',
                  image1: InkWell(
                    onTap: () {
                      Get.to(() => NotificationScreen());
                    },
                    child: Image.asset(
                      "assets/images/bell.png",
                      height: 4.h,
                    ),
                  ),
                  image2: Container(
                    height: 5.h,
                    width: 5.h,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.complex.com/complex/images/c_fill,dpr_auto,f_auto,q_auto,w_1400/fl_lossy,pg_1/j6teixhgksmh0v0y9f5i/the-game-accuser-awarded-control-over-his-record-label?fimg-ssr"),
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
