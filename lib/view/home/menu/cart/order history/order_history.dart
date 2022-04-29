// ignore_for_file: prefer_const_constructors

import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/home/home_page/notification/notification.dart';
import 'package:raghu_education/view/home/menu/cart/share/share_screen.dart';
import 'package:raghu_education/view/home/profile/myProfile_screen.dart';
import 'package:raghu_education/widgets/app_bar.dart';
import 'package:raghu_education/widgets/constant.dart';

class OrderHistoryScreen extends StatelessWidget {
  OrderHistoryScreen({Key? key, required this.img, required this.name})
      : super(key: key);
  String img;
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
            child: Column(
              children: [
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  height: 17.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color(0xFFEFEFEF)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 17.h,
                        width: 35.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.red,
                            image: DecorationImage(
                                fit: BoxFit.fill, image: NetworkImage(img))),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 2.h),
                          SizedBox(
                            width: 56.w,
                            child: Text(
                              name,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14.sp),
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            "Price: ₹ xxx.xx",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "Order Place :",
                                style: TextStyle(
                                    // fontWeight: FontWeight.w300,
                                    color: texxtcolor,
                                    fontSize: 13.sp)),
                            TextSpan(
                              text: "20th Dec' 2021",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600),
                            )
                          ]))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                PhysicalModel(
                  color: Colors.blueGrey,
                  elevation: 3,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.w,
                      vertical: 2.h,
                    ),
                    height: 17.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color(0xFFEFEFEF)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Payment Method",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp
                        ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Container(
                              height: 9.h,
                              width: 9.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFEBEBEB),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:AssetImage("assets/images/paytm.png"))
                              ),
                            ),
                            SizedBox(
                              width: 3.w
                              ,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Paytm - One Communication Limited",
                                style: TextStyle(
                                  color: texxtcolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp
                                ),
                                ),
                                 Text("Payment made on: 20th Dec' 2021",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12.sp
                                ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                                SizedBox(
                  height: 3.h,
                ),
                PhysicalModel(
                  color: Colors.blueGrey,
                  elevation: 3,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.w,
                      vertical: 1.h,
                    ),
                    height: 17.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color(0xFFEFEFEF)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Order Information",
                      style: TextStyle(
                        color: texxtcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp
                      ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Text('Order id',
                          style: TextStyle(
                            color: Colors.black45,
                            
                            fontSize: 14.sp
                          ),
                          ),
                          Spacer(),
                           Text('#123456',
                          style: TextStyle(
                            color: Colors.black45,
                            
                            fontSize: 14.sp
                          ),
                          ),
                        ],
                      ),
                       SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Text('Total Amount of Course',
                          style: TextStyle(
                            color: Colors.black45,
                            
                            fontSize: 14.sp
                          ),
                          ),
                          Spacer(),
                           Text('₹xxx.xx',
                          style: TextStyle(
                            color: Colors.black45,
                            
                            fontSize: 14.sp
                          ),
                          ),
                        ],
                      )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                InkWell(
                  onTap: (){
                    Get.to(()=> ShareScreen());
                  },
                  child: Container(
                    height: 7.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                     gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFF77BBFF), Color(0xFF3284D6)]),
                      borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text("Refer this course to a Friend",
                          style: TextStyle(
                            color: secondryColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Icon(Icons.share,
                       color: Colors.white,
                       size: 3.h
                       ,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
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
