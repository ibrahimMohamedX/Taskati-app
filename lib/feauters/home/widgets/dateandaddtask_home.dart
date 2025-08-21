import 'package:flutter/material.dart';
import 'package:taskati_app/core/variables.dart';
import 'package:taskati_app/feauters/task/screens/addtask_screen.dart';

class DateAndAddTask extends StatelessWidget {
  const DateAndAddTask({super.key});
  // final bool isblack;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'October 30,2023',
              style: StyleData.bigfont.copyWith(
                color: variablesData.textwhiteToblack,
              ),
            ),
            Text(
              'Today',
              style: StyleData.bigfont.copyWith(
                color: variablesData.textwhiteToblack,
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddtaskScreen()),
            );
          },
          child: Container(
            padding: ConstData.padding10,
            decoration: BoxDecoration(
              color: ColorData.blue,
              borderRadius: ConstData.raduis10,
            ),
            child: Row(
              children: [
                Icon(Icons.add, color: ColorData.white),
                Text('Add Task', style: StyleData.halffont),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
