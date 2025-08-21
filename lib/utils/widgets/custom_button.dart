import 'package:flutter/material.dart';
import 'package:taskati_app/core/variables.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.ontap});
  final String text;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 250,
        height: 60,
        decoration: BoxDecoration(
          color: ColorData.blue,
          borderRadius: ConstData.raduis10,
        ),
        child: Center(child: Text(text, style: StyleData.halffont)),
      ),
    );
  }
}
