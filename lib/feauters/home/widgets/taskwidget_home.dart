import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:taskati_app/core/variables.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key, required this.task});
  final Map task;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: const DrawerMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            icon: Icons.done,
            label: 'Complete',
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: DrawerMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Container(
        width: double.infinity,
        // height: 120,
        padding: ConstData.padding10,
        decoration: BoxDecoration(
          color: task['color'],
          borderRadius: ConstData.raduis10,
        ),
        child: Row(
          spacing: 10,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text('Task-${task['tasknum']}', style: StyleData.halffont),
                Row(
                  spacing: 10,
                  children: [
                    Icon(Icons.lock_clock, color: ColorData.white),
                    Text(
                      '${task['strat-time']} AM - ${task['end-time']} AM',
                      style: StyleData.smfont,
                    ),
                  ],
                ),
                Text(task['description'], style: StyleData.halffont),
              ],
            ),
            Spacer(),
            Container(width: 1, height: 60, color: ColorData.white),
            RotatedBox(
              quarterTurns: 3,
              child: Text(task['state'], style: StyleData.halffont),
            ),
          ],
        ),
      ),
    );
  }
}
