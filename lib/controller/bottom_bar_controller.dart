import 'package:get/get.dart';

class BottomController extends GetxController {
  RxInt tabindex = 0.obs;
  changeTabIndex(int index){
   tabindex(index);
  }


}