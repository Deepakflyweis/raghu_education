import 'package:chewie/chewie.dart';
import 'package:get/get.dart';
import 'package:raghu_education/import_files.dart';
import 'package:video_player/video_player.dart';

class VideoLectureController extends GetxController {

  final source = 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4';
  VideoPlayerController ? controller;
  RxBool isLoader = true.obs;
  @override
  void onInit() {
    controller = VideoPlayerController.network(source)
    ..addListener(()=> update())
    ..setLooping(true)
    ..initialize().then((_){controller!.play();update();
    isLoader.value = false;
    
    });
    super.onInit();
  }

}