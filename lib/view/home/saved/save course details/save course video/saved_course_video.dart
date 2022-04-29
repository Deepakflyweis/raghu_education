import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/widgets/constant.dart';
class SavedCourseVideo extends StatelessWidget {
  const SavedCourseVideo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
          padding: EdgeInsets.symmetric(
          horizontal: 4.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Lecture Videos",
            style: TextStyle(
              fontSize: 13.sp,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w600
            ),
            ),
            SizedBox(
              height: 3.h
            ),

            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
              return Column(
                children: [
                  InkWell(
                    onTap: (){
                     
                    },
                    child: PhysicalModel(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Colors.blueGrey,
                      elevation: 8,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 2.w,
                          vertical: 1.h,
                  
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(7))
                        ),
                        child: Row(children: [
                          Container(
                            height: 6.h,
                            width: 7.h,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.all(Radius.circular(6))
                            ),
                            child: Center(
                              child: Icon(Icons.play_circle,
                              color: primaryColor,
                              size: 3.h,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Topic 1"),
                              Text("Video - 10min")
                            ],
                          )
                        ],),
                      ),
                  
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  )
                ],
              );
            }),
            PhysicalModel(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Colors.blueGrey,
                    elevation: 8,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 2.w,
                        vertical: 1.h,

                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(7))
                      ),
                      child: Row(children: [
                        Container(
                          height: 6.h,
                          width: 7.h,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.all(Radius.circular(6))
                          ),
                          child: Center(
                            child: Icon(Icons.question_answer,
                          
                            size: 3.h,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text("Notes"),
                                                SizedBox(
                          width: 40.w,
                        ),
                        Icon(Icons.download)
                      ],),
                    ),

                  ),
                  SizedBox(
                    height: 2.h,
                  )
          ],
        ),
      ),
    );
  }
}