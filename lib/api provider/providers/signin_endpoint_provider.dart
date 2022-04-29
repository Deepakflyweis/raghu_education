import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:raghu_education/api%20provider/api_client.dart';
import 'package:raghu_education/view/home/bottom%20bar/bottom_bar_screen.dart';
import 'package:raghu_education/widgets/commonLoader.dart';
import 'package:get/get.dart' as g;
import 'package:raghu_education/widgets/constant.dart';

class SignInProvider {
  Dio client;
  SignInProvider({required this.client});

  signInApi({required String email, required String pass}) async {

    CommanLoader.loader();
    var data = {"userIdentifier": email, "password": pass};

    try {
      Response r = await client.post('/user/login', data: data);
      CommanLoader.hideLoader();


      print(email);
      print(pass);
      // print(r.statusCode);
      // print(r.data);

      if (r.statusCode == 200) {
        Client.token = r.data["data"]["loginToken"];
        GetStorage box = GetStorage();
        await box.write("token", Client.token);
        g.Get.offAll(() => BottomNavBarscreen());
      } else {
        // CommanLoader.hideLoader();
        CommanLoader.message("wrong credentials");
      }
    } on DioError catch (e) {
      print(e.toString());
      CommanLoader.hideLoader();
      CommanLoader.message(e.response!.data['msg']);
    }
  }
}
