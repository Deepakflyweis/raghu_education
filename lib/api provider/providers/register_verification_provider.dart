import 'package:dio/dio.dart';
import 'package:raghu_education/view/signUp/profile/profile_screen.dart';
import 'package:raghu_education/widgets/commonLoader.dart';
import 'package:get/get.dart' as g;
class RegisterVerificationEndPoint{
  Dio client;
  RegisterVerificationEndPoint({required this.client});


  registerVerifyOtp(String email, String otp) async{
    try {
      CommanLoader.loader();
      var data = {
            "otp": otp,
    "userIdentifier": email
      };
      Response r = await client.post("/user/signup-otp", data: data);

      print(r.data);
       CommanLoader.hideLoader();
      if (r.statusCode == 200 ) {
          g.Get.to(()=> ProfileScreen());
      } else {
        CommanLoader.showErrorDialog(description: r.data['error']);
      }
    }on DioError catch (e) {
      CommanLoader.hideLoader();
      CommanLoader.message(e.response!.data['msg']);
    }
  }
}