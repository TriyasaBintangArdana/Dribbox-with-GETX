import 'package:dirbbox/app/constant/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Change Password",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: appBlue
            ),),
            const SizedBox(height: 50),
            Text("Current Password",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appBlue
            ),),
            const SizedBox(height: 5),
             TextField(
              controller: controller.currentPassword,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text("New Password",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appBlue
            ),),
            const SizedBox(height: 5),
             TextField(
              controller: controller.newPassword,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text("Confirm Password",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appBlue
            ),),
            const SizedBox(height: 5),
             TextField(
              controller: controller.confirmPassword,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: Get.width,
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              padding: EdgeInsets.symmetric(vertical: 10),
              backgroundColor: Colors.blue
              ),
              onPressed: (){}, 
              child: Text("Submit",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),),),
            ),
          ],
        ),
      )
    );
  }
}
