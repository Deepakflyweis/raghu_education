

import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;
import 'package:raghu_education/view/login/email%20or%20mobile/checkEmail%20controller/verify%20email/verify_email.dart';
import 'package:raghu_education/widgets/commonLoader.dart';

class ForgetPasswordProvider {
  Dio client;

  ForgetPasswordProvider({
    required this.client,
  });

  sendForgotOtp( String email) async {
    CommanLoader.loader();
    var data = {"email": email};
    try {
      Response r = await client.post("/user/forgot-password", data: data);
      CommanLoader.hideLoading();

      if (r.statusCode == 200) {
        g.Get.to(() => VerifyEmail());
      } else {
        CommanLoader.showErrorDialog(description: r.data['error']);
      }
    } on DioError catch (e) {
      CommanLoader.hideLoading();
      CommanLoader.showErrorDialog(description: e.message);
    }
  }

   reSendOTP( String otp) async{
      var data ={  'otp' : otp};
      try{
        final response = await client.post('/user/resend-signup-otp', data: data);
        CommanLoader.hideLoading();

        if(response.statusCode == 200){
        CommanLoader.message('Sent again Successfully');
        } else{
          CommanLoader.showErrorDialog(description: response.data['error']);
        }
      } on DioError catch (e){
        CommanLoader.hideLoading();
        CommanLoader.showErrorDialog(description: e.message);

      }
      }
}
