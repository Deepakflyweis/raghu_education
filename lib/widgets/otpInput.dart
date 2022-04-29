import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({Key? key,required this.controller,required this.autoFocus}) : super(key: key);
  final bool autoFocus;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 60,
        width: 8.w,
        child: TextField(
          decoration: InputDecoration(
            counterText: '',
            focusColor: Colors.black,
          ),
          autofocus: autoFocus,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          controller: controller,
          maxLength: 1,
          onChanged: (value) {
            if (value.length ==1){
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ),
    );
  }
}
