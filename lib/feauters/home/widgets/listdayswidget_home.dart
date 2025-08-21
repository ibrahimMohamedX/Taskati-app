import 'package:flutter/material.dart';
import 'package:taskati_app/feauters/home/widgets/daywidget_home.dart';

class ListdaysWidgets extends StatelessWidget {
  const ListdaysWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final List days = [
      {'month': 'OCT', 'day-num': 30, 'day-name': 'MON'},
      {'month': 'OCT', 'day-num': 31, 'day-name': 'TUE'},
      {'month': 'NOV', 'day-num': 1, 'day-name': 'WED'},
      {'month': 'NOV', 'day-num': 2, 'day-name': 'THU'},
    ];
    return SizedBox(
      height: 155,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return DayWidget(
            isactive: index == 0 ? true : null,
            month: days[index]['month'],
            daynum: days[index]['day-num'],
            dayname: days[index]['day-name'],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 10);
        },
        itemCount: days.length,
      ),
    );
  }
}
