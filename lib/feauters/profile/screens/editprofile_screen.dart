import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskati_app/core/assets.dart';
import 'package:taskati_app/core/screens.dart';
import 'package:taskati_app/core/variables.dart';
import 'package:taskati_app/utils/helper/helper.dart';
import 'package:taskati_app/utils/widgets/custom_button.dart';
import 'package:taskati_app/utils/widgets/custom_filed.dart';

class EditprofileScreen extends StatefulWidget {
  const EditprofileScreen({super.key});

  @override
  State<EditprofileScreen> createState() => _EditprofileScreenState();
}

class _EditprofileScreenState extends State<EditprofileScreen> {
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        variablesData.Fuserimage = File(pickedFile.path); // حفظ الصورة في متغير
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: variablesData.pagecolor,
      body: SafeArea(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          padding: ConstData.Hpagepadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(25),
                        height: 200,
                        child: Column(
                          spacing: 20,
                          children: [
                            CustomButton(
                              text: 'Upload From Camera',
                              ontap: () {
                                pickImage(ImageSource.camera);
                                Navigator.pop(context);
                              },
                            ),
                            CustomButton(
                              text: 'Upload From Gallery',
                              ontap: () {
                                pickImage(ImageSource.gallery);
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: ColorData.blue,
                    border: Border.all(width: 2, color: ColorData.blue),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child:
                      variablesData.Fuserimage != null
                          ? ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.file(
                              variablesData.Fuserimage!,
                              width: 200,
                              height: 200,
                              fit: BoxFit.fill,
                            ),
                          )
                          : ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(AssetsData.Iuserpic, width: 200),
                          ),
                ),
              ),
              ConstData.height20,
              Container(
                width: double.infinity,
                height: 1,
                color: ColorData.blue,
              ),
              ConstData.height20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    variablesData.name,
                    style: StyleData.bigfont.copyWith(color: ColorData.blue),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(25),
                            height: 200,
                            child: Column(
                              spacing: 20,
                              children: [
                                CustomField(
                                  hint: 'Edit Your Name',
                                  onchange: (value) {
                                    variablesData.name = value;
                                  },
                                ),
                                CustomButton(
                                  text: 'Update Your Name',
                                  ontap: () {
                                    setState(() {});
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.edit,
                      size: ConstData.IconSize25,
                      color: ColorData.blue,
                    ),
                  ),
                ],
              ),
              ConstData.height20,
              CustomButton(
                text: 'Save',
                ontap: () {
                  NavigationData.pushReplacment(context, ScreenData.homeScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
