// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:raghu_education/controller/profile_controller.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/widgets/constant.dart';
import 'package:raghu_education/widgets/profile_fields.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  ProfileController _profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Form(
          key: _profileController.profileKey,
          child: Stack(
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(
                    child: Text(
                      "LOGO",
                      style: TextStyle(
                        color: secondryColor,
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                top: 8.h,
                child: Container(
                  height: 22.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF62B4FF).withOpacity(0.3),
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
                      color: Color(0xFF62B4FF).withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
              Positioned(
                top: 13.h,
                right: 0.w,
                child: Container(
                  height: 8.h,
                  width: 16.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF62B4FF).withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
              Positioned(
                top: 8.h,
                right: 5.w,
                child: Container(
                  height: 8.h,
                  width: 16.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF62B4FF).withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
              Positioned(
                bottom: 8.h,
                right: 10.w,
                child: Container(
                  height: 18.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF62B4FF).withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
              Positioned(
                bottom: 11.h,
                right: 15.w,
                child: Container(
                  height: 18.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF62B4FF).withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
              Positioned(
                top: 13.h,
                left: 5.w,
                child: Container(
                  height: 80.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: secondryColor,
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(() {
                            if (_profileController.profileImage.value.path !=
                                "")
                              return Center(
                                child: Container(
                                  height: 15.h,
                                  width: 15.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                   
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: FileImage(
                                        _profileController.profileImage.value,
                                      
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            else
                              return Center(
                                  child: Image.asset(
                                "assets/images/profile.png",
                                height: 15.h,
                              ));
                          }),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          InkWell(
                            onTap: () async {
                              _profileController.getImage();
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    "Upload Profile Image",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor,
                                        fontSize: 13.sp),
                                  ),
                                ),
                                Icon(
                                  Icons.upload,
                                  color: primaryColor,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "Enter your details marked with ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.sp)),
                            TextSpan(
                                text: "*",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: Colors.red))
                          ])),
                          SizedBox(
                            height: 1.h,
                          ),
                          ProfileTextfields(
                              controller: _profileController.fname,
                              validator: _profileController.nameValuiadtor,
                              hint: "First name *"),
                          SizedBox(
                            height: 1.h,
                          ),
                          ProfileTextfields(
                              controller: _profileController.lname,
                              validator: _profileController.lastValidator,
                              hint: "Last name *"),
                          SizedBox(
                            height: 1.h,
                          ),
                          ProfileTextfields(
                              controller: _profileController.school,
                              validator: _profileController.schoolValidator,
                              hint: "School/Institution*"),
                          SizedBox(
                            height: 1.h,
                          ),
                          ProfileTextfields(
                              controller: _profileController.qualification,
                              validator:
                                  _profileController.qualificationValidator,
                              hint: "Highest Qualification*"),
                          SizedBox(
                            height: 3.h,
                          ),
                          InkWell(
                            onTap: () {
                              _profileController.checkProfile();
                            },
                            child: Container(
                              height: 7.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Center(
                                child: Text(
                                  "Continue",
                                  style: TextStyle(
                                    color: secondryColor,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 1.h,
                left: 40.w,
                child: Text(
                  "version 1.0",
                  style: TextStyle(
                    color: secondryColor,
                    fontSize: 11.sp,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
