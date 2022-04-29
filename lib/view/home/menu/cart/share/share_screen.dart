import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/home/home_page/notification/notification.dart';
import 'package:raghu_education/view/home/profile/myProfile_screen.dart';
import 'package:raghu_education/widgets/app_bar.dart';
import 'package:raghu_education/widgets/constant.dart';

class ShareScreen extends StatelessWidget {
  const ShareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: PhysicalModel(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  elevation: 10,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.w, vertical: 4.h),
                    height: 40.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: secondryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Share",
                        style: TextStyle(
                          color: texxtcolor,
                          
                          fontSize: 14.sp
                        ),
                        ),
                        SizedBox(
                          height: 2.h,

                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Image.asset("assets/images/whatsApp.png",
                                height: 7.h,
                                ),
                                 Text('WhatsApp',
                            style: TextStyle(
                              color: texxtcolor,
                              fontSize: 11.sp
                              
                            ),
                            )
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Image.asset("assets/images/meta.png",
                                height: 7.h
                                ,
                                ),
                                        Text('Meta',
                            style: TextStyle(
                              color: texxtcolor,
                              fontSize: 11.sp
                              
                            ),
                            )
                              ],
                            ),
                            Spacer(),
                             Column(
                               children: [
                                 Image.asset("assets/images/twitter.png",
                            height: 7.h
                            ,
                            ),
                                Text('Twitter',
                            style: TextStyle(
                              color: texxtcolor,
                              fontSize: 11.sp
                              
                            ),
                            )
                               ],
                             ),
                             Spacer(),
                             Column(
                               children: [
                                 Image.asset("assets/images/mesenger.png",
                            height: 5.h
                            ,
                            ),
                            SizedBox(
                              height: 2.h
                              ,
                            ),
                            Text('Messenger',
                            style: TextStyle(
                              color: texxtcolor,
                              fontSize: 11.sp

                            ),
                            )
                               ],
                             ),
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Column(
                          children: [
                            PhysicalModel(
                              shape: BoxShape.circle,
                              color: Colors.blueGrey,
                              elevation: 10,
                              child: Container(
                                height: 8.h,
                                width: 8.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.more_horiz_outlined),
                              ),
                            ),
                               SizedBox(
                          height: 0.6.h,
                        ),
                         Text('More',
                            style: TextStyle(
                              color: texxtcolor,
                              fontSize: 11.sp
                              
                            ),
                            )
                          ],
                        ),
                     Spacer(),
InkWell(
                       onTap: (){
                         Get.back();
                       },
                       child: Center(
                         child:  Text('Close',
                              style: TextStyle(
                                color: texxtcolor,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold
                                
                              ),
                              ),
                       ),
                     )
                      ],                     
                    ),
                  ),
                ),
              )
            ],
          ),
          App_Bar(
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
              title: 'Cart',
              image1: InkWell(
                onTap: () {
                  Get.to(() => NotificationScreen());
                },
                child: Image.asset(
                  "assets/images/bell.png",
                  height: 4.h,
                ),
              ),
              image2: InkWell(
                onTap: () {
                  Get.to(() => MyProfilescreen());
                },
                child: Container(
                  height: 5.h,
                  width: 5.h,
                  decoration: BoxDecoration(
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
