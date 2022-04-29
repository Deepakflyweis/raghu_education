import 'package:raghu_education/import_files.dart';

class ProfileTextfields extends StatelessWidget {
  ProfileTextfields(
      {Key? key,
      required this.controller,
      required this.validator,
    required this.hint,
      this.obscure = false})
      : super(key: key);
  final String? Function(String?) validator;
  bool obscure;
  String hint;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 100.w,
          height: 7.5.h,
        ),
        TextFormField(
          obscureText: obscure,
          validator: validator,
          controller: controller,
          decoration: InputDecoration(
              constraints: BoxConstraints(maxWidth: 100.w),
          hintText: "$hint"
             
        ))
      ],
    );
  }
}
