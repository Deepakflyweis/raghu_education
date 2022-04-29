import 'package:raghu_education/import_files.dart';

class Textfields extends StatelessWidget {
  Textfields(
      {Key? key,
      required this.controller,
      required this.validator,
      required this.label,
      this.obscure = false})
      : super(key: key);
  final String? Function(String?) validator;
  bool obscure;
  String label;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PhysicalModel(
          color: Colors.white,
          elevation: 4,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          child: SizedBox(
            width: 100.w,
            height: 7.5.h,
          ),
        ),
        TextFormField(
          obscureText: obscure,
          validator: validator,
          controller: controller,
          decoration: InputDecoration(
              constraints: BoxConstraints(maxWidth: 100.w),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              label: Text(label)),
        )
      ],
    );
  }
}
