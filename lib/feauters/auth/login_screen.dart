import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskati_app/core/assets.dart';
import 'package:taskati_app/core/screens.dart';
import 'package:taskati_app/core/variables.dart';
import 'package:taskati_app/utils/functions/functions.dart';
import 'package:taskati_app/utils/helper/helper.dart';
import 'package:taskati_app/utils/widgets/custom_button.dart';
import 'package:taskati_app/utils/widgets/custom_filed.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      backgroundColor: variablesData.pagecolor, //
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: ConstData.Hpagepadding,
            child: Column(
              children: [
                // appbar
                Row(
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: () {
                        variablesData.isblack = !variablesData.isblack;
                        ChangeColor();
                        setState(() {});
                      },
                      child: Icon(
                        Icons.sunny,
                        color: variablesData.thembuttoncolor,
                        size: ConstData.IconSize25,
                      ),
                    ),
                  ],
                ),
                // body
                SizedBox(height: 250),
                // user image
                Container(
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
                          : Image.asset(AssetsData.Iuserpic, width: 200),
                ),
                ConstData.height20,
                CustomButton(
                  text: 'Upload From Camera',
                  ontap: () {
                    pickImage(ImageSource.camera);
                  },
                ),
                ConstData.height10,
                CustomButton(
                  text: 'Upload From Gallery',
                  ontap: () {
                    pickImage(ImageSource.gallery);
                  },
                ),
                ConstData.height20,
                // just a line
                Container(
                  width: double.infinity,
                  height: 1,
                  color: ColorData.grey,
                ),
                ConstData.height20,
                CustomField(
                  hint: 'Enter Your Name',
                  onchange: (value) {
                    variablesData.name = value;
                  },
                ),
                ConstData.height20,
                CustomButton(
                  text: 'Go',
                  ontap: () {
                    NavigationData.pushReplacment(
                      context,
                      ScreenData.homeScreen,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
