import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;
import 'package:raghu_education/api%20provider/api_client.dart';
import 'package:raghu_education/view/signUp/verify/verify.dart';
import 'package:raghu_education/widgets/commonLoader.dart';
import 'package:get_storage/get_storage.dart';


class RegisterEndPoint{
  Dio client;
  RegisterEndPoint({required this.client});

  registerApi({required String emailOrMobile , required String password, required String confirm}) async{

    CommanLoader.loader();
    var data = {
      "userIdentifier": emailOrMobile,
      "password": password,
      "confirmPassword": confirm
    };
    try {
      Response r = await client.post('/user/signup', data: data);
      // print(r.statusCode);
      // print(r.data);
      CommanLoader.hideLoader();

      if (r.statusCode == 200) {
        Client.token = r.data["data"]["loginToken"];
          GetStorage box = GetStorage();
          await box.write("token", Client.token);
        g.Get.to(()=> VerifyScreen());
      }
      else {
      CommanLoader.message(r.data['msg']);
      }
    } on DioError catch (err){
      log(err.response!.data.toString());
      CommanLoader.hideLoader();
      CommanLoader.message(err.response!.data['msg']);
    }

  }
}