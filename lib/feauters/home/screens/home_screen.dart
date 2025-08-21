import 'package:flutter/material.dart';
import 'package:taskati_app/core/variables.dart';
import 'package:taskati_app/utils/functions/functions.dart';
import 'package:taskati_app/feauters/home/widgets/dateandaddtask_home.dart';
import 'package:taskati_app/feauters/home/widgets/listdayswidget_home.dart';
import 'package:taskati_app/feauters/home/widgets/listtaskswidget_home.dart';
import 'package:taskati_app/feauters/home/widgets/userinfo_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // bool isblack = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: variablesData.pagecolor,
      floatingActionButton: InkWell(
        onTap: () {
          variablesData.isblack = !variablesData.isblack;
          ChangeColor();
          setState(() {});
        },
        child: Container(
          width: 70,
          height: 70,
          padding: ConstData.padding10,
          decoration: BoxDecoration(
            color: variablesData.isblack ? ColorData.black : ColorData.blue,
            border: Border.all(width: 4, color: ColorData.blue),
            borderRadius: ConstData.raduis10,
          ),
          child: Center(
            child: Icon(Icons.sunny, size: 40, color: ColorData.white),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: ConstData.Hpagepadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ConstData.height20,
                UserInfoHome(),
                ConstData.height20,
                DateAndAddTask(),
                ConstData.height20,
                ListdaysWidgets(),
                ConstData.height20,
                ListTasksWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
