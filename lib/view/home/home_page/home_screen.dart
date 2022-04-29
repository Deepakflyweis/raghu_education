
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/home/home_page/home_module/popular_course_model.dart';
import 'package:raghu_education/view/home/home_page/notification/notification.dart';
import 'package:raghu_education/view/home/menu/menu_screen.dart';
import 'package:raghu_education/view/home/profile/myProfile_screen.dart';
import 'package:raghu_education/widgets/app_bar.dart';
import 'package:raghu_education/widgets/constant.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<String> image = [
    'assets/images/handShake.png',
    'assets/images/Group 1242.png',
    'assets/images/dataScience.png',
    'assets/images/math.png',
    'assets/images/ui.png'
  ];

  List<PopularCourses> popular = [
    PopularCourses(
        title: "UI/UX Design Course",
        img:
            "http://www.digitalberry.in/wp-content/uploads/2020/12/WhatsApp-Image-2020-12-21-at-5.07.41-PM-819x1024.jpeg",
        bestseller: true,
        duration: "18 h 40m",
        instructor: "Ravi",
        rating: 4),
    PopularCourses(
        title: "UI/UX Design Course",
        img:
            "http://www.digitalberry.in/wp-content/uploads/2020/12/WhatsApp-Image-2020-12-21-at-5.07.41-PM-819x1024.jpeg",
        bestseller: true,
        duration: "18 h 40m",
        instructor: "Ravi",
        rating: 4),
    PopularCourses(
        title: "UI/UX Design Course",
        img:
            "http://www.digitalberry.in/wp-content/uploads/2020/12/WhatsApp-Image-2020-12-21-at-5.07.41-PM-819x1024.jpeg",
        bestseller: true,
        duration: "18 h 40m",
        instructor: "Ravi",
        rating: 4),
    PopularCourses(
        title: "UI/UX Design Course",
        img:
            "http://www.digitalberry.in/wp-content/uploads/2020/12/WhatsApp-Image-2020-12-21-at-5.07.41-PM-819x1024.jpeg",
        bestseller: true,
        duration: "18 h 40m",
        instructor: "Ravi",
        rating: 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  height: 23.h,
                  width: 100.h,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/Best Courses.png")),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Row(
                    children: [
                      Text(
                        "Ongoing Course",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14.sp),
                      ),
                      Spacer(),
                      Text(
                        "View All",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.6.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: PhysicalModel(
                    color: secondryColor,
                    elevation: 4,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    child: SizedBox(
                      height: 17.h,
                      width: 100.w,
                      child: Row(
                        children: [
                          Container(
                            height: 17.h,
                            width: 30.w,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/images/java.png"))),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 1.h,
                              ),
                              SizedBox(
                                width: 58.w,
                                child: Text(
                                  "Java Programming Beginners Course - I",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                "-Instructor name",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 12.sp,
                                    color: Color(0xFF585858)),
                              ),
                              SizedBox(
                                height: 0.4.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 50.w,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF707070),
                                    size: 2.h,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 0.4.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 25.w,
                                  ),
                                  Text(
                                    "50% Completed",
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Color(0xFF585858)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1.3.h,
                              ),
                              Container(
                                width: 50.w,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Color(0xFF53E648),
                                  width: 0.2.w,
                                )),
                                child: const LinearProgressIndicator(
                                  backgroundColor: secondryColor,
                                  color: Color(0xFF53E648),
                                  value: 0.5,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Row(
                    children: [
                      Text(
                        "Featured",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.sp),
                      ),
                      Spacer(),
                      Text(
                        "View All",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 20.h,
                  width: 100.w,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (BuildContext ctx, index) {
                        return Row(
                          children: [
                            // SizedBox(
                            //   width: 1.w,
                            // ),
                            index == 5
                                ? Container(
                                    height: 20.h,
                                    width: 30.w,
                                    decoration: const BoxDecoration(
                                      color: secondryColor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Row(
                                      children: const [
                                        Text("More"),
                                        Icon(Icons.add_circle_outline_sharp)
                                      ],
                                    ),
                                  )
                                : Container(
                                    height: 20.h,
                                    width: 40.w,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: AssetImage(image[index]))),
                                  ),
                          ],
                        );
                      }),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Row(
                    children: [
                      Text(
                        "Popular courses",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14.sp),
                      ),
                      Spacer(),
                      Text(
                        "View All",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                GridView.builder(
                    shrinkWrap: true,
                    itemCount: popular.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 2.h,
                      mainAxisExtent: 33.h,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 20.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(popular[index].img))),
                          ),
                          SizedBox(
                            height: 0.9.h,
                          ),
                          Text(
                            popular[index].title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                popular[index].instructor,
                                style: TextStyle(fontSize: 14.sp),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                popular[index].duration,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0.9.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 6.w,
                              ),
                              popular[index].bestseller == true
                                  ? Container(
                                      height: 4.h,
                                      width: 20.w,
                                      color: Colors.yellow,
                                      child: Center(
                                        child: Text("BestSeller"),
                                      ),
                                    )
                                  : SizedBox(),
                              SizedBox(
                                width: 2.w,
                              ),
                              SizedBox(
                                height: 3.h,
                                width: 20.w,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: popular[index].rating,
                                    itemBuilder: (context, index) {
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
                            height: 0.9.h,
                          ),
                        ],
                      );
                    }),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  height: 7.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[100],
                      border: Border.all(color: Colors.black, width: 0.3.w),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Center(
                    child: Text(
                      "Become an Instructor",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          "assets/images/teacher.png",
                          height: 15.h,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            """Instructors from around the
world teach millions of students.""",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            """We provide the tools and skills to teach
what you love.""",
                            style: TextStyle(fontSize: 9.sp),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Container(
                            height: 4.5.h,
                            width: 30.w,
                            decoration: const BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.all(Radius.circular(50))
                            ),
                            child: const Center(
                              child: Text("Start Today",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                          )

                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                )
              ],
            ),
          ),
          App_Bar(
            icon: InkWell(
                      onTap: (){
                      Get.to(()=> MenuScreen());
                      },
                      child: Icon(Icons.sort,
                      color: secondryColor,
                      size: 3.h,
                      ),
                    ),
              title: 'Home',
              image1: InkWell(
                onTap: (){
                  Get.to(()=> NotificationScreen());
                },
                child: Image.asset(
                  "assets/images/bell.png",
                  height: 4.h,
                ),
              ),
              image2: InkWell(
                onTap: (){
                  Get.to(()=> MyProfilescreen());
                },
                child: Container(
                  height: 5.h,
                  width: 5.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.complex.com/complex/images/c_fill,dpr_auto,f_auto,q_auto,w_1400/fl_lossy,pg_1/j6teixhgksmh0v0y9f5i/the-game-accuser-awarded-control-over-his-record-label?fimg-ssr"),
                      )),
                ),
              )),
        ],
      )),
    );
  }
}
