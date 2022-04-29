import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/widgets/constant.dart';

class CourseRating extends StatelessWidget {
  const CourseRating({Key? key, required this.rating}) : super(key: key);

  final rating;

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
            PhysicalModel(
              elevation: 7,
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(7)),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 2.3.w,
                  vertical: 1.h,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Overall Ratings",
                      style: TextStyle(fontSize: 13.sp),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      //  mainAxisAlignment: MainAxisAlignment.start,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15.h,
                          width: 15.h,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFFE5C231)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "$rating",
                                style: TextStyle(
                                    color: secondryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.sp),
                              ),
                              Text(
                                "50 Reviews",
                                style: TextStyle(
                                    color: secondryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "5 star",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp),
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                SizedBox(
                                  width: 30.w,
                                  child: LinearProgressIndicator(
                                    backgroundColor: Colors.white,
                                    color: Colors.red,
                                    value: 0.4,
                                  ),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  " 4 star",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp),
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                SizedBox(
                                  width: 30.w,
                                  child: LinearProgressIndicator(
                                    backgroundColor: Colors.white,
                                    color: Colors.red,
                                    value: 0.69,
                                  ),
                                ),
                                Text(
                                  "15",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  " 3 star",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp),
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                SizedBox(
                                  width: 30.w,
                                  child: LinearProgressIndicator(
                                    backgroundColor: Colors.white,
                                    color: Colors.red,
                                    value: 0.2,
                                  ),
                                ),
                                Text(
                                  "32",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  " 2 star",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp),
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                SizedBox(
                                  width: 28.w,
                                  child: LinearProgressIndicator(
                                    backgroundColor: Colors.white,
                                    color: Colors.red,
                                    value: 1,
                                  ),
                                ),
                                Text(
                                  "112",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "1 star",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp),
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                SizedBox(
                                  width: 32.w,
                                  child: LinearProgressIndicator(
                                    backgroundColor: Colors.white,
                                    color: Colors.red,
                                    value: 0.4,
                                  ),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Latest Reviews",
              style: TextStyle(
                  color: texxtcolor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp),
            ),
            ListView.builder(
                itemCount: 5,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        SizedBox(
                        height: 1.h
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 3.w,
                          ),
                          Container(
                            height: 10.h,
                            width: 10.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        "https://images.indianexpress.com/2021/08/money-heist-professor-1200.jpg"))),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lorem Ipsum",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.sp,
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                                width: 50.w,
                                child: ListView.builder(
                                    itemCount: 5,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, i) {
                                      return Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 2.5.h,
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                      Text(
                          '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. '''),
                      SizedBox(
                        height: 1.h,
                      ),
                      Divider(
                        thickness: 0.3.w,
                        color: texxtcolor,
                        height: 0.3.w,
                      ),
                      SizedBox(
                        height: 1.h
                      )
                    ],
                  );
                }),
                SizedBox(
                  height: 3.h,
                ),
                PhysicalModel(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  elevation: 5,
                  child: Container(
                   
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 2.w
                          ),
                          height: 5.h,
                          width: 100.h,
                          decoration: BoxDecoration(
                            color: Color(0xFFEFEFEF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)
                            )
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Give your feedback about this course",
                            style: TextStyle(
                              color: texxtcolor,
                              fontWeight: FontWeight.w500,
                              fontSize: 10.sp
                            ),
                            )),
                        ),
                        TextField(
                          maxLines: 4,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Write here"
                          ),
                        ),

                        SizedBox(
                                height: 4.h,
                                width: 50.w,
                                child: ListView.builder(
                                    itemCount: 5,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, i) {
                                      return Icon(
                                        Icons.star_border,

                                        size: 5.h,
                                      );
                                    }),
                              )

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                )
          ],
        ),
      ),
    );
  }
}
