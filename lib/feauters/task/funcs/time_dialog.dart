import 'package:flutter/material.dart';

Future<void> selectTime(BuildContext context) async {
  TimeOfDay? picked = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(), // الوقت الافتراضي اللي هيفتح عليه
  );

  if (picked != null) {
    print("الوقت المختار: ${picked.format(context)}");
  }
}
