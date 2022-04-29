import 'package:raghu_education/import_files.dart';
import 'package:raghu_education/view/home/saved/payment%20screen/payment%20controller/payment_controller.dart';
import 'package:raghu_education/view/home/saved/payment%20screen/payment%20controller/sucessfull%20payment/sucessfull_payment.dart';
import 'package:raghu_education/widgets/app_bar.dart';
import 'package:raghu_education/widgets/constant.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen(
      {Key? key,
      required this.rating,
      required this.course,
      required this.instructor})
      : super(key: key);

  final course;
  final instructor;
  final rating;

  paymentcontroller _payment = Get.put(paymentcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        SingleChildScrollView(
          child: Obx(
            () => Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.w),
                    child: PhysicalModel(
                      color: Colors.blueGrey,
                      elevation: 10,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
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
                                "$course",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                  Text(
                    'Wallet',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    /*       height: 50.h,
                                  width: 90.w,*/
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                                value: PaymentMethod.paytm,
                                activeColor: Colors.red,
                                groupValue: _payment.selecthosOption.value,
                                onChanged: _payment.onchaged),
                            SizedBox(
                              width: 60.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Paytm',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Image.asset(
                                        'assets/images/paytm.png',
                                        height: 4.h,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ],
                                  ),
                                  Text('Pay with paytm wallet or UPI .'),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Divider(
                          thickness: 1,
                          height: 1.h,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                                value: PaymentMethod.mobikwik,
                                activeColor: Colors.red,
                                groupValue: _payment.selecthosOption.value,
                                onChanged: _payment.onchaged),
                            SizedBox(
                              width: 60.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Mobiwik',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Image.asset(
                                        'assets/images/mobikwik.png',
                                        height: 4.h,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ],
                                  ),
                                  Text('Pay with mobiwik.'),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Divider(
                          thickness: 1,
                          height: 1.h,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                                value: PaymentMethod.awazon,
                                activeColor: Colors.red,
                                groupValue: _payment.selecthosOption.value,
                                onChanged: _payment.onchaged),
                            SizedBox(
                              width: 60.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Amazon Pay',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Image.asset(
                                        'assets/images/amazon.png',
                                        height: 4.h,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ],
                                  ),
                                  Text('Pay with amazon pay.'),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    'UPI',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 2.h),
                        Text(
                            'Pay with paytm wallet or UPI for ₹899 or more and \nget cashback . Offer ends 25 Dec 2021.'),
                        Divider(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                                value: PaymentMethod.upi,
                                activeColor: Colors.red,
                                groupValue: _payment.selecthosOption.value,
                                onChanged: _payment.onchaged),
                            SizedBox(
                              width: 60.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Add new UPI ID',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Image.asset(
                                        'assets/images/upi.png',
                                        height: 6.h,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ],
                                  ),
                                  Text('Pay using supported UPI apps'),
                                  SizedBox(height: 2.h)
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    'Net Banking & Cards',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                                value: PaymentMethod.netBanking,
                                activeColor: Colors.red,
                                groupValue: _payment.selecthosOption.value,
                                onChanged: _payment.onchaged),
                            SizedBox(
                              width: 60.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Net Banking',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text('Choose bank')
                                ],
                              ),
                            )
                          ],
                        ),
                        Divider(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                                value: PaymentMethod.cards,
                                activeColor: Colors.red,
                                groupValue: _payment.selecthosOption.value,
                                onChanged: _payment.onchaged),
                            SizedBox(
                              width: 60.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Credit & Debit cards ',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text('Add new card for payment')
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                ],
              ),
            ),
          ),
        ),
       Positioned(
         bottom: 10.h,
         left: 0.w,
         right: 0.w,
         child:     InkWell(
                  onTap: (){
                 Get.to(()=> SuccessfullPayment());
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: PhysicalModel(
                      color: Colors.blueGrey,
                      elevation: 8,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 2.3.w,
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Row(
                          children: [
                            Text(
                              "Price: ₹xxx.xx",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14.sp),
                            ),
                            Spacer(),
                            Container(
                              height: 6.h,
                              width: 48.w,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFF77BBFF),
                                    Color(0xFF3284D6),
                                  ],
                                  
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Center(
                                child: Text("Enroll Now",
                                style: TextStyle(
                                  color: secondryColor,
                                  fontSize: 14.sp
                                ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
         
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
            title: "Saved Course",
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
      ])),
    );
  }
}
