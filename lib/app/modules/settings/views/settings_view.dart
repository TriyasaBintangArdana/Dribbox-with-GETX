import 'package:dirbbox/app/constant/color.dart';
import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 30,right: 30,left: 30,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Settings",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: appBlue
            ),),
            const SizedBox(height: 50),
            TextButton(
              style: TextButton.styleFrom(
              padding: EdgeInsets.all(0)
            ),
            onPressed: (){}, 
            child: Text("Add Account",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appBlue
            ),),),
            TextButton(
              style: TextButton.styleFrom(
              padding: EdgeInsets.all(0)
            ),
            onPressed: (){
              Get.toNamed(Routes.CHANGE_PASSWORD);
            }, 
            child: Text("Change Password",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appBlue
            ),),),
            TextButton(
              style: TextButton.styleFrom(
              padding: EdgeInsets.all(0)
            ),
            onPressed: (){}, 
            child: Text("Change Language",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appBlue
            ),),),
            TextButton(
              style: TextButton.styleFrom(
              padding: EdgeInsets.all(0)
            ),
            onPressed: (){}, 
            child: Text("Upgrade Plan",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appBlue
            ),),),
            TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(0)
            ),
            onPressed: (){}, 
            child: Text("Multiple Account",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appBlue
            ),),),
            const SizedBox(height: 50),
            Row(
              children: [
                Text("Enable Sync",
                style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appBlue
            ),),
            Spacer(),
           Obx(() => Switch(
             activeColor: Colors.white,
            activeTrackColor: Color(0xFF00BCD4),
            value: controller.switchButton1.value, 
            onChanged:(value) {
              controller.switchButton1.value = value;
            },),
            ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text("Enable 2 Step Verification",
                style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appBlue
            ),),
            Spacer(),
           Obx(() => Switch(
            activeColor: Colors.white,
            activeTrackColor: Color(0xFF00BCD4),
            value: controller.switchButton2.value, 
            onChanged:(value) {
              controller.switchButton2.value = value;
            },),
            ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
