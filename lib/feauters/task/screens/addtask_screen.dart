import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:taskati_app/core/assets.dart';
import 'package:taskati_app/core/variables.dart';
import 'package:taskati_app/feauters/task/funcs/date_dialog.dart';
import 'package:taskati_app/feauters/task/funcs/time_dialog.dart';
import 'package:taskati_app/feauters/task/widgets/listcolorwidget.dart';
import 'package:taskati_app/utils/widgets/custom_filed.dart';

class AddtaskScreen extends StatefulWidget {
  const AddtaskScreen({super.key});
  // final bool isblack;
  @override
  State<AddtaskScreen> createState() => _AddtaskScreenState();
}

class _AddtaskScreenState extends State<AddtaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: variablesData.pagecolor,
      appBar: AppBar(
        title: Text(
          'Add Task',
          style: StyleData.bigfont.copyWith(
            color:
                variablesData.isblack == true
                    ? ColorData.white
                    : ColorData.blue,
          ),
        ),
        centerTitle: true,
        foregroundColor:
            variablesData.isblack == true ? ColorData.white : ColorData.blue,
        backgroundColor:
            variablesData.isblack == true ? ColorData.blue : ColorData.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.sizeOf(context).height,
            ),
            child: Padding(
              padding: ConstData.Hpagepadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ConstData.height20,
                  Text(
                    'Title',
                    style: StyleData.bigfont.copyWith(
                      color: variablesData.textwhiteToblack,
                    ),
                  ),
                  CustomField(hint: 'Enter Title'),
                  ConstData.height20,
                  Text(
                    'Description',
                    style: StyleData.bigfont.copyWith(
                      color: variablesData.textwhiteToblack,
                    ),
                  ),
                  CustomField(hint: 'Enter Your Description'),
                  ConstData.height20,
                  Text(
                    'Date',
                    style: StyleData.bigfont.copyWith(
                      color: variablesData.textwhiteToblack,
                    ),
                  ),
                  CustomField(
                    hint: '2025-05-17',
                    aftericon: Icon(
                      Icons.date_range,
                      color: variablesData.textwhiteToblack,
                    ),
                    ontap: () {
                      selectDate(context);
                    },
                  ),
                  ConstData.height20,
                  Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Start Time',
                              style: StyleData.bigfont.copyWith(
                                color: variablesData.textwhiteToblack,
                              ),
                            ),
                            CustomField(
                              hint: '02-17 AM',
                              aftericon: SvgPicture.asset(
                                IconsData.SclockIcon,
                                color: variablesData.textwhiteToblack,
                                width: 25,
                                height: 25,
                              ),
                              ontap: () {
                                selectTime(context);
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'End Time',
                              style: StyleData.bigfont.copyWith(
                                color: variablesData.textwhiteToblack,
                              ),
                            ),
                            CustomField(
                              hint: '05-17 AM',
                              aftericon: SvgPicture.asset(
                                IconsData.SclockIcon,
                                color: variablesData.textwhiteToblack,
                                width: 25,
                                height: 25,
                              ),
                              ontap: () {
                                selectTime(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ConstData.height20,

                  ListColorWidget(),
                  SizedBox(height: 200),
                  InkWell(
                    onTap: () {
                      // logic to add new task and navigator.pop
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: ConstData.padding10,
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: ColorData.blue,
                        borderRadius: ConstData.raduis10,
                      ),
                      child: Center(
                        child: Text(
                          'Add Task',
                          style: StyleData.bigfont.copyWith(
                            color: ColorData.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ConstData.height20,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
