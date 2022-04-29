import 'package:get/get.dart';
enum PaymentMethod {paytm, mobikwik, awazon, upi, netBanking, cards}

class paymentcontroller extends GetxController{
 Rx<PaymentMethod> selecthosOption = PaymentMethod.paytm.obs;
 onchaged(value){
   selecthosOption(value);
 }
  
}