import 'package:flutter/material.dart';

Future<void> selectDate(BuildContext context) async {
  DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(), // التاريخ الافتراضي اللي هيفتح عليه
    firstDate: DateTime(2000), // أقل تاريخ مسموح
    lastDate: DateTime(2100), // أكبر تاريخ مسموح
  );

  if (picked != null) {
    print("التاريخ المختار: $picked");
  }
}
