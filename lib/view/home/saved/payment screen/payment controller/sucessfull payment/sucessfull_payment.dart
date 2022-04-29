import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/widgets/constant.dart';
import 'package:lottie/lottie.dart';
class SuccessfullPayment extends StatelessWidget {
  const SuccessfullPayment({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 8.h,
            child: Container(
              height: 22.h,
              width: 30.w,
              decoration: BoxDecoration(
                  color: const Color(0xFF62B4FF).withOpacity(0.3),
                  // ignore: prefer_const_constructors
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
          ),
          Positioned(
            top: 10.h,
            child: Container(
              height: 22.h,
              width: 40.w,
              decoration: BoxDecoration(
                  color: const Color(0xFF62B4FF).withOpacity(0.3),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(8))),
            ),
          ),
          Positioned(
            top: 13.h,
            right: 0.w,
            child: Container(
              height: 8.h,
              width: 16.w,
              decoration: BoxDecoration(
                  color: const Color(0xFF62B4FF).withOpacity(0.3),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(8))),
            ),
          ),
          Positioned(
            top: 8.h,
            right: 5.w,
            child: Container(
              height: 8.h,
              width: 16.w,
              decoration: BoxDecoration(
                  color: const Color(0xFF62B4FF).withOpacity(0.3),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(8))),
            ),
          ),
          Positioned(
            bottom: 8.h,
            right: 10.w,
            child: Container(
              height: 18.h,
              width: 30.w,
              decoration: BoxDecoration(
                  color: const Color(0xFF62B4FF).withOpacity(0.3),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(8))),
            ),
          ),
          Positioned(
            bottom: 11.h,
            right: 15.w,
            child: Container(
              height: 18.h,
              width: 30.w,
              decoration: BoxDecoration(
                  color: const Color(0xFF62B4FF).withOpacity(0.3),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(8))),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 4.h, right: 4.h, top: 25.h, bottom: 21.h),
            child: PhysicalModel(
              color: Colors.blueGrey,
              elevation: 10,
              borderRadius: BorderRadius.all(const Radius.circular(20)),
              child: Container(
                decoration: BoxDecoration(
                    color: secondryColor,
                    borderRadius: BorderRadius.all(
                      const Radius.circular(20),
                    ),
                    border: Border.all(color: primaryColor, width: 0.3.w)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.w,
                    vertical: 2.h,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Payment Status",
                        style: TextStyle(
                            color: texxtcolor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                  Lottie.asset("assets/images/payment_successful.json",
                  height: 30.h,
                  width: 20.h,
                  ),

                  SizedBox(
                    height: 2.h
                    ,
                  ),
                  Text("Redirecting to your course in: ")
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
