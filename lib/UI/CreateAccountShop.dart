import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizzlingtaste/constants/AppStrings.dart';
import 'package:sizzlingtaste/resources/CustomTextFiled.dart';

import '../constants/AppFontWeight.dart';
import '../controller.dart';
import '../utility/Utilities.dart';


class CreateAccountShop extends StatelessWidget {
   CreateAccountShop( {Key? key}) : super(key: key);
   HomeController controller = Get.put(HomeController());
   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("controller.isUpdate.value",style: Utilities.setTextStyle(
        AppFontWeight.subHeader, AppFontWeight.semiBold),)),

        body: Container(
          color: Colors.red,
          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
          child: Column(
            children: [
            CustomTextFiled(
            textField: controller.teRestroName,
            labelText: AppStrings.restaurantName,
            hintText: AppStrings.restaurantName,
            length: 140,
            readOnly: false,
            onChange: (text){}),

            CustomTextFiled(
            textField: controller.teEmail,
            labelText: AppStrings.email,
            readOnly: false,
            length: 140,
            hintText: AppStrings.email,
            onChange: (text){}),

            CustomTextFiled(
            textField: controller.teAddress,
            labelText: AppStrings.address,
            hintText: AppStrings.address,
            length: 140,
            readOnly: false,
            onChange: (text){}),

            CustomTextFiled(
            textField: controller.teLandmark,
            labelText: AppStrings.landmark,
            hintText: AppStrings.landmark,
            readOnly: false,
            length: 140,
            onChange: (text){}),

            Row(
              children: [
                CustomTextFiled(
                textField: controller.teCity,
                labelText: AppStrings.city,
                hintText: AppStrings.city,
                readOnly: false,
                length: 140,
                onChange: (text){}),

                const SizedBox(width: 10),

                CustomTextFiled(
                textField: controller.teState,
                labelText: AppStrings.state,
                hintText: AppStrings.state,
                readOnly: false,
                length: 140,
                onChange: (text){}),

              ],
            ),


            CustomTextFiled(
            textField: controller.teCountry,
            labelText: AppStrings.country,
            hintText: AppStrings.country,
            readOnly: false,
            length: 140,
            onChange: (text){}),

            CustomTextFiled(
            textField: controller.tePinCode,
            labelText: AppStrings.pinCode,
            readOnly: false,
            length: 140,
            hintText: AppStrings.pinCode,
            onChange: (text){}),


            ],
    ),
        ),

    );
  }


}