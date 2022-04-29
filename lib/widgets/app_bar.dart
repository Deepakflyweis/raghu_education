

import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/widgets/constant.dart';

class App_Bar extends StatelessWidget {
   App_Bar({ Key? key, required this.icon,
   required this.title,
   required this.image1, required this.image2 }) : super(key: key);

   String title;
   Widget icon;
   Widget image1;
    Widget image2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          
        ),
        color: primaryColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w
        ),
        child: Row(
          children: [
          icon,
             SizedBox(
              width: 3.w,
            ),
            Text(title,
            style: TextStyle(
              color: secondryColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500
            ),
            ),
            Spacer(),
            image1,
            SizedBox(
              width: 3.w,
            ),
            image2,

          ],
        ),
      ),
    );
  }
}