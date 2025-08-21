import 'package:flutter/material.dart';
import 'package:taskati_app/core/variables.dart';

class DayWidget extends StatelessWidget {
  const DayWidget({
    super.key,
    this.isactive = false,
    required this.month,
    required this.daynum,
    required this.dayname,
  });
  final bool? isactive;
  final String month;
  final int daynum;
  final String dayname;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.sizeOf(context).width - 30 - 40) / 4,
      height: 150,
      padding: ConstData.padding10,
      decoration: BoxDecoration(
        color: isactive == true ? ColorData.blue : Colors.transparent,
        border: Border.all(width: 2, color: ColorData.blue),
        borderRadius: ConstData.raduis10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            month.toUpperCase(),
            style: StyleData.halffont.copyWith(
              color:
                  isactive == true
                      ? ColorData.white
                      : variablesData.textwhiteToblack,
            ),
          ),
          ConstData.height10,
          Text(
            daynum.toString(),
            style: StyleData.bigfont.copyWith(
              color:
                  isactive == true
                      ? ColorData.white
                      : variablesData.textwhiteToblack,
              fontSize: 45,
            ),
          ),
          ConstData.height10,
          Text(
            dayname.toUpperCase(),
            style: StyleData.halffont.copyWith(
              color:
                  isactive == true
                      ? ColorData.white
                      : variablesData.textwhiteToblack,
            ),
          ),
        ],
      ),
    );
  }
}
