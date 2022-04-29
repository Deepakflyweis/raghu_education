import 'package:chewie/chewie.dart';
import 'package:raghu_education/controller/video_lecture_controller.dart';
import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/widgets/app_bar.dart';
import 'package:raghu_education/widgets/constant.dart';
import 'package:video_player/video_player.dart';

class LectureVideo extends StatelessWidget {
  LectureVideo(
      {Key? key,
      required this.rating,
      required this.instructor,
      required this.course})
      : super(key: key);

  final instructor;
  final course;
  int rating;

  VideoLectureController _videoLectureController =
      Get.put(VideoLectureController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 7.h,
              ),
             GestureDetector(
               behavior: HitTestBehavior.opaque,
               onTap: (){
                 _videoLectureController.controller!.value.isPlaying ? _videoLectureController.controller!.pause():
                 _videoLectureController.controller!.play();
               },
               child: Stack(
                 children: [
                  
                  
                   Container(
                          height: 30.h,
                          width: 100.w,
                          color: Colors.grey,
                          child: 
                          Obx((){
                            if (_videoLectureController.isLoader.value == false &&
                            _videoLectureController.controller != null &&
                                  _videoLectureController
                                      .controller!.value.isInitialized
                             ) {
                              return VideoPlayer(_videoLectureController.controller!);
                            } else {
                              return  Center(
                                  child: CircularProgressIndicator(),
                                );
                            }
                          })

                          
                          //     ?  VideoPlayer(_videoLectureController.controller!)
                          //     : Center(
                          //         child: CircularProgressIndicator(),
                          //       ),
                        ),
                        _videoLectureController.controller!.value.isPlaying ? Container():
             
                        Icon(Icons.play_arrow, color: Colors.white,
                        size: 3.h,
                        ),
             
                        Positioned(
                          bottom: 0,
                          child: SizedBox(
                            height: 1.3.h,
                            width: 100.w,
                            child: VideoProgressIndicator(
                            _videoLectureController.controller!
                            , allowScrubbing: true),
                          ))
                 ],
               ),
             ),
              SizedBox(
                height: 4.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: PhysicalModel(
                  color: Colors.blueGrey,
                  elevation: 10,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 2.w,
                        vertical: 1.h,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.sp),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "- by $instructor",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: Colors.grey,
                                    fontStyle: FontStyle.italic),
                              ),
                              Spacer(),
                              Container(
                                height: 3.h,
                                width: 13.w,
                                color: Color(0xFFE5C231),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "$rating",
                                        style: TextStyle(
                                            color: Color(0xFF614E01),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13.sp),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 2.3.h,
                                        color: Color(0xFF614E01),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            children: [
                              Text("About"),
                              Spacer(),
                              Text(
                                "Videos",
                                style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w700),
                              ),
                              Spacer(),
                              Text("Reviews")
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Text(
                  "Lecture Videos",
                  style: TextStyle(
                      fontSize: 13.sp,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 3.h),
              SizedBox(
                height: 30.h,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: PhysicalModel(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                color: Colors.blueGrey,
                                elevation: 8,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 2.w,
                                    vertical: 1.h,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(7))),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 6.h,
                                        width: 7.h,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6))),
                                        child: Center(
                                          child: Icon(
                                            Icons.play_circle,
                                            color: primaryColor,
                                            size: 3.h,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Topic 1"),
                                          Text("Video - 10min")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
          App_Bar(
              icon: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 3.h,
                  color: Colors.white,
                ),
              ),
              title: "My Course",
              image1: Image.asset(
                "assets/images/bell.png",
                height: 4.h,
              ),
              image2: Container(
                  height: 5.h,
                  width: 5.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.complex.com/complex/images/c_fill,dpr_auto,f_auto,q_auto,w_1400/fl_lossy,pg_1/j6teixhgksmh0v0y9f5i/the-game-accuser-awarded-control-over-his-record-label?fimg-ssr"),
                      )))),
        ],
      )),
    );
  }
}
