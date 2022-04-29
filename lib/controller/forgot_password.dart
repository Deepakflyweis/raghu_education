import 'package:get/get.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/login/login_screen.dart';

class ForgotPasswordcontroller extends GetxController {
  GlobalKey<FormState> passwordformKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  TextEditingController confirm = TextEditingController();

  String ? passwordValiadation(value){
    if (value.length <6) {
      return 'Password should more than 6 digits';
      
    }
    return null;
  }

  String ? confirmPassword(value){
    if (value != password.text || value == '') {
      return 'Password is not matching';
      
    }
    return null;
  }

 void checkPassword(){

   final isValidate = passwordformKey.currentState!.validate();
   if (!isValidate) {
     return ;
   } else {
     Get.offAll(()=> LoginScreen());
   }

   passwordformKey.currentState!.save();
  }


}