import 'package:flutter/material.dart';
import 'package:taskati_app/core/variables.dart';
import 'package:taskati_app/feauters/task/widgets/colorwidget.dart';

class ListColorWidget extends StatefulWidget {
  const ListColorWidget({super.key});

  @override
  State<ListColorWidget> createState() => _ListColorWidgetState();
}

class _ListColorWidgetState extends State<ListColorWidget> {
  int? current;
  @override
  Widget build(BuildContext context) {
    final List colors = [ColorData.blue, ColorData.orange, ColorData.red];
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          bool isactive = current == index;
          return InkWell(
            onTap: () {
              current = index;
              setState(() {});
            },
            child: ColorWidget(color: colors[index], isactive: isactive),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 5);
        },
        itemCount: colors.length,
      ),
    );
  }
}
