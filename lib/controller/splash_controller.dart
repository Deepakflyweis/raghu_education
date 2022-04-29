// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:raghu_education/api%20provider/api_client.dart';
import 'package:raghu_education/view/home/bottom%20bar/bottom_bar_screen.dart';
import 'package:raghu_education/view/welocome/onboarding_screen.dart';
import 'package:get/get.dart' as g;

class SplashController extends GetxController {
@override
  void onInit() {
    Timer(Duration(seconds: 5),(){
      checkLogin();

    });
    super.onInit();
  }

   checkLogin() async {
     GetStorage box = GetStorage();
     try {
       String? token = box.read("token");
       if (token != null) {
         Client.token = token;
         log(token);
         g.Get.offAll(() => BottomNavBarscreen());
       } else {
         Get.offAll(()=> OnboardingScren());
       }
     } on Exception catch (e) {
       Get.offAll(()=> OnboardingScren());
     }


   }
}
