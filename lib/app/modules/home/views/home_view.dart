import 'package:dirbbox/app/constant/color.dart';
import 'package:dirbbox/app/constant/widget/filecard.dart';
import 'package:dirbbox/app/modules/profile/views/profile_view.dart';
import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          right: 40,
          left: 40,
          top: 60,
          bottom: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Your Dribbox',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: appBlue,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder:
                          (context) => Container(
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                              color: Color(0xFFF1F3F6),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 210,
                                      height: 107,
                                      child: Image.asset(
                                        'assets/images/sidebar.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                      padding: EdgeInsets.only(right: 20),
                                      onPressed: () {
                                        Get.back();
                                      },
                                      icon: Icon(Icons.close),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 100),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.only(left: 20),
                                  ),
                                  onPressed: () {
                                    Get.offAllNamed(Routes.HOME);
                                  },
                                  child: Text(
                                    "HOME",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF1B1D28),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.only(left: 20),
                                  ),
                                  onPressed: () {
                                    Get.back();
                                    Future.delayed(Duration.zero, () {
                                      Get.toNamed(
                                        Routes.PROFILE,
                                      );
                                    });
                                  },
                                  child: Text(
                                    "Profile",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF1B1D28),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.only(left: 20),
                                  ),
                                  onPressed: () {
                                     Get.back();
                                   Future.delayed(Duration.zero, () {
                                      Get.toNamed(
                                        Routes.STORAGE,
                                      );
                                    });
                                  },
                                  child: Text(
                                    "Storage",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF1B1D28),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.only(left: 20),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Shared",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF1B1D28),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.only(left: 20),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Stats",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF1B1D28),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.only(left: 20),
                                  ),
                                  onPressed: () {
                                   Get.back();
                                   Future.delayed(Duration.zero, () {
                                      Get.toNamed(
                                        Routes.SETTINGS,
                                      );
                                    });
                                  },
                                  child: Text(
                                    "Settings",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF1B1D28),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.only(left: 20),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Help",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF1B1D28),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 80),
                                 Container(
                                  margin: EdgeInsets.only(left: 20),
                                  width: 150,
                                   child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(20),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      alignment: Alignment(50, 0),
                                      backgroundColor: Colors.white,
                                      
                                    ),
                                    onPressed: (){
                                      Get.offAllNamed(Routes.LOGIN);
                                    }, 
                                    child: Row(
                                      children: [
                                        Icon(Icons.power_settings_new_outlined,color: Color(0xFF1B1D28),),
                                        const SizedBox(width: 5,),
                                        Text("Logout",
                                        style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF1B1D28),
                                    ),),
                                      ],
                                    )),
                                 )
                              ],
                            ),
                          ),
                    );
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      "assets/icon/union.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controller.controllerText,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search Folder",
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: appBlue,
                ),
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
            Row(
              children: [
                Obx(
                  () => SizedBox(
                    width: 100,
                    child: DropdownButton(
                      value: controller.selectedValue.value,
                      items: controller.dropdownItems,
                      onChanged: (value) {
                        controller.selectedValue.value = value as String;
                      },
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Icon(Icons.menu, color: appBlue),
                    ),
                    IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Icon(Icons.add_box_outlined, color: appBlue),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Wrap(
                    spacing: 34,
                    runSpacing: 34,
                    children: [
                      FileCard(
                        title: 'Mobile Apps',
                        date: 'December 20.2020',
                        imagePath: 'assets/images/fileblue.png',
                        backgroundColor: appBlue.withOpacity(0.3),
                        textColor: appBlue,
                      ),
                      FileCard(
                        title: 'SVG Icons',
                        date: 'December 14.2020',
                        imagePath: 'assets/images/fileyellow.png',
                        backgroundColor: appYellow.withOpacity(0.3),
                        textColor: appYellow,
                      ),
                      FileCard(
                        title: 'Prototypes',
                        date: 'December 22.2020',
                        imagePath: 'assets/images/filered.png',
                        backgroundColor: appRed1.withOpacity(0.3),
                        textColor: appRed1,
                      ),
                      FileCard(
                        title: 'Avatars',
                        date: 'December 10.2020',
                        imagePath: 'assets/images/fileocean.png',
                        backgroundColor: appBlueOcean.withOpacity(0.3),
                        textColor: appBlueOcean,
                      ),
                      FileCard(
                        title: 'Design',
                        date: 'December 20.2020',
                        imagePath: 'assets/images/fileblue.png',
                        backgroundColor: appBlue.withOpacity(0.3),
                        textColor: appBlue,
                      ),
                      FileCard(
                        title: 'Portfolio',
                        date: 'December 14.2020',
                        imagePath: 'assets/images/fileyellow.png',
                        backgroundColor: appYellow.withOpacity(0.3),
                        textColor: appYellow,
                      ),
                      FileCard(
                        title: 'References',
                        date: 'December 22.2020',
                        imagePath: 'assets/images/filered.png',
                        backgroundColor: appRed1.withOpacity(0.3),
                        textColor: appRed1,
                      ),
                      FileCard(
                        title: 'Clients',
                        date: 'December 10.2020',
                        imagePath: 'assets/images/fileocean.png',
                        backgroundColor: appBlueOcean.withOpacity(0.3),
                        textColor: appBlueOcean,
                      ),
                      FileCard(
                        title: 'Design',
                        date: 'December 20.2020',
                        imagePath: 'assets/images/fileblue.png',
                        backgroundColor: appBlue.withOpacity(0.3),
                        textColor: appBlue,
                      ),
                      FileCard(
                        title: 'Portfolio',
                        date: 'December 14.2020',
                        imagePath: 'assets/images/fileyellow.png',
                        backgroundColor: appYellow.withOpacity(0.3),
                        textColor: appYellow,
                      ),
                      FileCard(
                        title: 'References',
                        date: 'December 22.2020',
                        imagePath: 'assets/images/filered.png',
                        backgroundColor: appRed1.withOpacity(0.3),
                        textColor: appRed1,
                      ),
                      FileCard(
                        title: 'Clients',
                        date: 'December 10.2020',
                        imagePath: 'assets/images/fileocean.png',
                        backgroundColor: appBlueOcean.withOpacity(0.3),
                        textColor: appBlueOcean,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        style: IconButton.styleFrom(backgroundColor: appBlue, iconSize: 50),
        onPressed: () {},
        icon: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
