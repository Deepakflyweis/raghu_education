import 'package:get/get.dart';
import 'package:raghu_education/api%20provider/api_client.dart';
import 'package:raghu_education/api%20provider/providers/registor_endpoint_provider.dart';
import 'package:raghu_education/import_files.dart';
import 'package:flutter/material.dart';
import 'package:raghu_education/view/signUp/verify/verify.dart';

class SignupController extends GetxController {
GlobalKey<FormState> signUpkey = GlobalKey();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController confirmPassword = TextEditingController();

 @override
  void onInit() {
    email;
    password;
    confirmPassword;
    super.onInit();
  }
  @override
  void dispose() {
   
    email.dispose();
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }
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
  String ? confirmPassworValidation(value){
    if(value == ''|| value != password.text){
      return 'enter your password';
    }
   
    return null;
  }
   checklogin() {
    final isvalidate = signUpkey.currentState!.validate();
    if (!isvalidate) {
      return;
    }
     else {
      callLoginApi();
    }
    signUpkey.currentState!.save();
  }

  callLoginApi(){
    Client _client = Client();
    RegisterEndPoint _register = RegisterEndPoint(client: _client.init());
    _register.registerApi(emailOrMobile: email.text, password: password.text, confirm: confirmPassword.text);
  }
   
  
}