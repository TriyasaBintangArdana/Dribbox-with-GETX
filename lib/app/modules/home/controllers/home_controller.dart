import 'package:dirbbox/app/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
 TextEditingController controllerText = TextEditingController();
  var selectedValue = "Recent".obs;
  List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Recent",
     style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: appBlue,
                  ),),value: "Recent"),
    DropdownMenuItem(child: Text("News",
     style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: appBlue,
                  )),value: "News"),
  ];
  return menuItems;
}
}
