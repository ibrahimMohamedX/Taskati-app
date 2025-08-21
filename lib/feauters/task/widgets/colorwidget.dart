import 'package:flutter/material.dart';
import 'package:taskati_app/core/variables.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({super.key, required this.color, this.isactive = false});
  final Color color;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child:
          isactive == true
              ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorData.white.withValues(alpha: 0.3),
                ),
                child: Icon(Icons.done, color: ColorData.white),
              )
              : SizedBox(),
    );
  }
}
