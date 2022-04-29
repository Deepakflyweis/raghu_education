import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:raghu_education/controller/bottom_bar_controller.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/home/bottom%20bar/bottom_bar_screen.dart';
import 'package:raghu_education/view/home/home_page/home_screen.dart';


class ProfileController extends GetxController {
  BottomController bottomController = Get.put(BottomController());
  GlobalKey<FormState> profileKey = GlobalKey<FormState>();
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController school = TextEditingController();
  TextEditingController qualification = TextEditingController();
  final picker = ImagePicker();
  Rx<File> profileImage = File("").obs;
  getImage() async{
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image!= null) {

      profileImage.value = File(image.path);
      
    } else {
                                Center(
                            child: Image.asset(
                              "assets/images/profile.png",
                              height: 15.h,
                            )
                          );
    }

  }

  String? nameValuiadtor(value) {
    if (value == '') {
      return 'Please Enter your first name';
    }
    return null;
  }

  String? lastValidator(value) {
    if (value == '') {
      return 'Please enter your last name';
    }
    return null;
  }

  String? schoolValidator(value) {
    if (value == '') {
      return 'Please enter your School/Institution';
    }
    return null;
  }

  String? qualificationValidator(value) {
    if (value == '') {
      return 'Please Enter your higher qualification';
    }

    return null;
  }

 void checkProfile(){
   final isValidator = profileKey.currentState!.validate();

   if (!isValidator) {
     return;
   } else {
    Get.offAll(()=> BottomNavBarscreen());
   }
   profileKey.currentState!.save();

  }
}
