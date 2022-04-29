import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/widgets/app_bar.dart';
import 'package:raghu_education/widgets/constant.dart';

class HelpnSupportScreen extends StatelessWidget {
  const HelpnSupportScreen({Key? key}) : super(key: key);

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
              left: 4.h,
              right: 4.h,
              top: 25.h,
              bottom: 31.h
            ),
            child: PhysicalModel(
              color: Colors.blueGrey,
              elevation: 10,
              borderRadius: BorderRadius.all(const Radius.circular(10)),
              child: Container(
                decoration: BoxDecoration(
                  color: secondryColor,
                  borderRadius: BorderRadius.all(
                    const Radius.circular(10),
                  ),
                  border: Border.all(
                    color: primaryColor,
                    width: 0.3.w
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.w,
                    vertical: 5.h,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/location.png",
                            height: 5.h,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Address",
                                style: TextStyle(
                                    color: texxtcolor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp),
                              ),
                              Text(
                                '''Lorem Ipsum is simply dummy text
of the printing and typesetting industry''',
                                style: TextStyle(
                                    color: texxtcolor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11.sp),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/Rectangle 3047.png",
                            height: 5.h,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Contact",
                                style: TextStyle(
                                    color: texxtcolor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp),
                              ),
                              Text(
                                '''+91 1234567890''',
                                style: TextStyle(
                                    color: texxtcolor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11.sp),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/message.png",
                            height: 5.h,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mail",
                                style: TextStyle(
                                    color: texxtcolor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp),
                              ),
                              Text(
                                '''abc@gmail.com''',
                                style: TextStyle(
                                    color: texxtcolor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11.sp),
                              )
                            ],
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 3.h,
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: App_Bar(
              icon: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: secondryColor,
                  size: 3.h,
                ),
              ),
              title: "Help and Support",
              image1: Spacer(),
              image2: Image.asset(
                "assets/images/message.png",
                height: 3.h,
              ),
            ),
          )
        ],
      )),
    );
  }
}
