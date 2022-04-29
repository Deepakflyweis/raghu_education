// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:raghu_education/controller/bottom_bar_controller.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/home/home_page/home_screen.dart';
import 'package:raghu_education/view/home/my_course/my_course.dart';
import 'package:raghu_education/view/home/saved/saved_course.dart';
import 'package:raghu_education/widgets/constant.dart';

class BottomNavBarscreen extends StatelessWidget {
  BottomNavBarscreen({Key? key}) : super(key: key);

  BottomController _bottomController =  Get.put(BottomController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: Stack(
            children: [
              Center(
                child: IndexedStack(
                  index: _bottomController.tabindex.value,
                  children: [
                    HomeScreen(), MyCourseScreen(), SavedScreen()
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: BottomNavigationBar(
                    elevation: 4,
                    onTap: _bottomController.changeTabIndex,
                    items: [
                      BottomNavigationBarItem(
                        label: "Home" ,
                          // title: Text("Home",
                          // style: TextStyle(
                          //    color: _bottomController.tabindex.value==0?Colors.blue:Colors.grey,
                          // )
                          // ),
                          icon: InkWell(
                            onTap: () {
                              _bottomController.changeTabIndex(0);
                            },
                            child: ImageIcon(
                              AssetImage(
                                "assets/images/home (2).png",
                              ),
                               color: _bottomController.tabindex.value==0?Colors.blue:Colors.grey,
                              size: 2.h,
                            ),
                          )),
                      BottomNavigationBarItem(
                        label: "My Courses",
                          // title: Text("My Courses",
                          // style: TextStyle(
                          //    color: _bottomController.tabindex.value==1?Colors.blue:Colors.grey,
                          // ),
                          // ),
                          icon: InkWell(
                            onTap: () {
                              _bottomController.changeTabIndex(1);
                            },
                            child: ImageIcon(
                              AssetImage(
                                "assets/images/myCourses.png",
                              ),
                              color: _bottomController.tabindex.value==1?Colors.blue:Colors.grey,
                              size: 2.h,
                            ),
                          )),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.bookmark,
                           color: _bottomController.tabindex.value==2?Colors.blue:Colors.grey,
                          ),
                          label: "Save",
                          // title: Text("Save",
                          // style: TextStyle(
                          //    color: _bottomController.tabindex.value==2?Colors.blue:Colors.grey,
                          // ),
                          // )
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
