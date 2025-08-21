import 'package:flutter/material.dart';
import 'package:taskati_app/core/assets.dart';
import 'package:taskati_app/core/screens.dart';
import 'package:taskati_app/core/variables.dart';
import 'package:taskati_app/utils/helper/helper.dart';

class UserInfoHome extends StatelessWidget {
  const UserInfoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, ${variablesData.name}',
              style: StyleData.bigfont.copyWith(color: ColorData.blue),
            ),
            Text(
              'Have A Nice Time',
              style: StyleData.halffont.copyWith(
                color: variablesData.textwhiteToblack,
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () {
            NavigationData.pushReplacment(
              context,
              ScreenData.editprofilescreen,
            );
          },
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: ColorData.blue,
              border: Border.all(width: 2, color: ColorData.blue),
              borderRadius: BorderRadius.circular(30),
            ),
            child:
                variablesData.Fuserimage != null
                    ? ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.file(
                        variablesData.Fuserimage!,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    )
                    : ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(AssetsData.Iuserpic, width: 60),
                    ),
          ),
        ),
      ],
    );
  }
}
