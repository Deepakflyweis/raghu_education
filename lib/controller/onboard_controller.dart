import 'package:get/get.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/signUp/signup_screen.dart';

class OnboardController extends GetxController {
PageController controller = PageController(
  initialPage: 0
);
RxInt currentPage = 0.obs;
onPageChanges(int index){
currentPage.value = index;
}
 netxPage(){
   Get.offAll(()=> SignupScreen());
 }

}