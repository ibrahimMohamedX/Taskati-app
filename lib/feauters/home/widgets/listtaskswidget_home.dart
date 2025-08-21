import 'package:flutter/material.dart';
import 'package:taskati_app/core/variables.dart';
import 'package:taskati_app/feauters/home/widgets/taskwidget_home.dart';

class ListTasksWidget extends StatelessWidget {
  const ListTasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List tasks = [
      {
        'tasknum': 1,
        'strat-time': '05:55',
        'end-time': '06:55',
        'description': 'I will do this task',
        'state': 'Completed',
        'color': ColorData.blue,
      },
      {
        'tasknum': 2,
        'strat-time': '05:55',
        'end-time': '06:55',
        'description': 'I will do this task',
        'state': 'ToDo',
        'color': ColorData.orange,
      },
      {
        'tasknum': 3,
        'strat-time': '05:55',
        'end-time': '06:55',
        'description': 'I will do this task',
        'state': 'ToDo',
        'color': ColorData.red,
      },
      {
        'tasknum': 4,
        'strat-time': '05:55',
        'end-time': '06:55',
        'description': 'I will do this task',
        'state': 'Completed',
        'color': ColorData.blue,
      },
    ];

    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return TaskWidget(task: tasks[index]);
      },
      separatorBuilder: (context, index) {
        return ConstData.height20;
      },
      itemCount: 4,
    );
  }
}
