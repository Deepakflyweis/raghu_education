import 'package:raghu_education/controller/bottom_bar_controller.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/home/bottom%20bar/bottom_bar_screen.dart';
import 'package:raghu_education/view/home/menu/cart/cart_screen.dart';
import 'package:raghu_education/view/home/menu/help%20n%20support/help_n_support.dart';
import 'package:raghu_education/view/login/login_screen.dart';
import 'package:raghu_education/widgets/app_bar.dart';
import 'package:raghu_education/widgets/constant.dart';
class MenuScreen extends StatelessWidget {
  MenuScreen({ Key? key }) : super(key: key);
BottomController _bottomController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: 3.w,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 13.h,
                ),
                InkWell(
                  onTap: (){
                _bottomController.tabindex(0);
                    Get.to(()=> BottomNavBarscreen());
                  },
                  child: Row(
                    children: [
                      Image.asset("assets/images/home.png",
                      height: 4.h,
                      ),
                      SizedBox(
                        width: 3.h,
                      ),
                      Text("Home",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400
                      ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                 InkWell(
                   onTap: (){
                     _bottomController.tabindex(1);
                     Get.to(()=> BottomNavBarscreen());
                   },
                   child: Row(
                    children: [
                      Image.asset("assets/images/cap.png",
                      height: 4.h,
                      ),
                      SizedBox(
                        width: 3.h,
                      ),
                      Text("My Courses",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400
                      ),
                      )
                    ],
                                 ),
                 ),
                SizedBox(
                  height: 5.h,
                ),
                 InkWell(
                    onTap: (){
                     _bottomController.tabindex(2);
                     Get.to(()=> BottomNavBarscreen());
                   },
                   child: Row(
                    children: [
                      Image.asset("assets/images/verfied.png",
                      height: 4.h,
                      ),
                      SizedBox(
                        width: 3.h,
                      ),
                      Text("Saved Courses",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400
                      ),
                      )
                    ],
                                 ),
                 ),
                SizedBox(
                  height: 5.h,
                ),
                  InkWell(
                    onTap: (){
                      Get.to(()=> CartScreen());
                    },
                    child: Row(
                    children: [
                      Image.asset("assets/images/cart.png",
                      height: 4.h,
                      ),
                      SizedBox(
                        width: 3.h,
                      ),
                      Text("Cart",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400
                      ),
                      )
                    ],
                                  ),
                  ),
                SizedBox(
                  height: 5.h,
                ),
                  InkWell(
                    onTap: (){
                      Get.to(()=> HelpnSupportScreen());
                    },
                    child: Row(
                    children: [
                      Image.asset("assets/images/hrl.png",
                      height: 4.h,
                      ),
                      SizedBox(
                        width: 3.h,
                      ),
                      Text("Help & Support",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400
                      ),
                      )
                    ],
                                  ),
                  ),
                SizedBox(
                  height: 5.h,
                ),
                  InkWell(
                    onTap: (){
                      Get.offAll(()=> LoginScreen());
                    },
                    child: Row(
                    children: [
                      Image.asset("assets/images/logout.png",
                      height: 4.h,
                      ),
                      SizedBox(
                        width: 3.h,
                      ),
                      Text("Logout",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400
                      ),
                      )
                    ],
                                  ),
                  ),
                SizedBox(
                  height: 5.h,
                ),
              ],
            ),
          ),
          App_Bar(icon: InkWell(onTap: (){
            Get.back();
          },
          child: Icon(Icons.close,
          color: secondryColor,
          size: 3.h,
          )
          ,), title: "Menu", image1: Spacer(), image2: Image.asset("assets/images/bell.png",
          height: 3.h,
          ))
        ],
      )),
    );
  }
}