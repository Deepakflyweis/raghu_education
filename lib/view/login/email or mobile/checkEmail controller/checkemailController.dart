import 'package:get/get.dart';
import 'package:raghu_education/api%20provider/api_client.dart';
import 'package:raghu_education/api%20provider/providers/forgot_pswd_otp_provider.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/login/email%20or%20mobile/checkEmail%20controller/verify%20email/verify_email.dart';

class CheckEmailController extends GetxController {
  GlobalKey<FormState> checkEmailkey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();

  String ? emailValidator(value) {
    if (value == '') {
      return 'Please enter your Email Id/Phone Number';
    } else {
      return null;
    }
  }

    checkEmail() async{
    final validator = checkEmailkey.currentState!.validate();

    if (!validator) {
      return;
    } else {
      callForgotPswdApi();
    }
    checkEmailkey.currentState!.save();
  }

  callForgotPswdApi() {
    Client _client = Client();
    ForgetPasswordProvider _frgtPswdProvider = ForgetPasswordProvider(client: _client.init());
    _frgtPswdProvider.sendForgotOtp( email.text);
  }


}