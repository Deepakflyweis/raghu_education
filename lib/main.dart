
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/welocome/splash_scree.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) async {
    await GetStorage.init();
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
            builder: (context, orientation, deviceType) { 
                return GetMaterialApp(
                  title: 'R Education',
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                  ),
                  home: SplashScreen(),
                );
             }
    );
    
  }
}

