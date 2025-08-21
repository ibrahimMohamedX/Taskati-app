import 'package:flutter/material.dart';
import 'package:taskati_app/core/variables.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required this.hint,
    this.ontap,
    this.aftericon,
    this.onchange,
  });
  final String hint;
  final Function()? ontap;
  final Widget? aftericon;
  final Function(String)? onchange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchange,
      cursorColor: ColorData.blue,
      style: TextStyle(color: variablesData.textwhiteToblack),
      decoration: InputDecoration(
        suffix: SizedBox(
          width: 20,
          height: 20,
          child: InkWell(onTap: ontap, child: aftericon),
        ),
        hintText: hint,
        hintStyle: TextStyle(color: variablesData.textwhiteTogrey),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: ColorData.blue),
          borderRadius: ConstData.raduis10,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: ColorData.blue),
          borderRadius: ConstData.raduis10,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: ColorData.blue),
          borderRadius: ConstData.raduis10,
        ),
      ),
    );
  }
}
