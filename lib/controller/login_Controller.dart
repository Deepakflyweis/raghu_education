import 'package:get/get.dart';
import 'package:raghu_education/api%20provider/api_client.dart';
import 'package:raghu_education/api%20provider/providers/signin_endpoint_provider.dart';
import 'package:raghu_education/import_files.dart';


class LoginController extends GetxController {

  GlobalKey<FormState> signinkey = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


  String ? emailvalidation(value){
    if(value == ''){
      return 'enter your Mobile/Email';
    }
    return null;
  }
  String ? passwordvalidation(value){
    if(value == ''){
      return 'enter your password';
    }
    return null;
  }
  checklogin() {
    final isvalidate = signinkey.currentState!.validate();
    if (!isvalidate) {
      return;
    }
     else {
   callSignApi();
    }
    signinkey.currentState!.save();
  }

callSignApi(){
  Client _client = Client();
  SignInProvider _signinProvider = SignInProvider(client: _client.init());
  _signinProvider.signInApi(email: email.text,pass:  password.text);
}

}