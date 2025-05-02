import 'dart:ui';

import 'package:dirbbox/app/constant/color.dart';
import 'package:dirbbox/app/constant/widget/filecard.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.menu))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 40,left: 40,top: 15,bottom: 15),
        child: SingleChildScrollView(
          child: 
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 38,right: 38,top: 20,bottom:20),
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 75,
                            height: 75,
                            child: Image.asset('assets/images/Profile.png',fit: BoxFit.cover,)),
                          const SizedBox(height: 5,),
                          Text('Neelesh Chaudhary',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: appBlue
                          )),
                          Text('UI / UX Designer',
                          style: TextStyle(
                            fontSize: 13,
                            color: appBlue
                          )),
                          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: appBlue.withOpacity(0.6)
                          ),),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Color(0xFFFF317B),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Center(
                            child: Text("PRO",
                            style: TextStyle(
                              color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Text("My Folders",
                    style: TextStyle(
                      fontSize: 15,
                      color: appBlue,
                      fontWeight: FontWeight.w500
                    ),),
                    Spacer(),
                    Row(
                      children: [
                        IconButton(
                          onPressed: (){}, 
                          icon: Icon(Icons.add,color: appBlue,),),
                        IconButton(
                          onPressed: (){}, 
                          icon: Icon(Icons.display_settings,color: appBlue,),),
                        IconButton(
                          onPressed: (){}, 
                          icon: Icon(Icons.keyboard_arrow_right_outlined,color: appBlue,),),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Wrap(
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  spacing: 34,
                  runSpacing: 34,
                  children: [
                   FileCard(
                    title: 'Mobile Apps', 
                    date: 'December 20.2020', 
                    imagePath: 'assets/images/fileblue.png', 
                    backgroundColor: appBlue.withOpacity(0.3), 
                    textColor: appBlue),
                    FileCard(
                    title: 'SVG Icons', 
                    date: 'December 14.2020', 
                    imagePath: 'assets/images/fileyellow.png', 
                    backgroundColor: appYellow.withOpacity(0.3), 
                    textColor: appYellow),
                    FileCard(
                    title: 'Prototypes', 
                    date: 'December 22.2020', 
                    imagePath: 'assets/images/filered.png', 
                    backgroundColor: appRed1.withOpacity(0.3), 
                    textColor: appRed1),
                    FileCard(
                    title: 'Avatars', 
                    date: 'December 10.2020', 
                    imagePath: 'assets/images/fileocean.png', 
                    backgroundColor: appBlueOcean.withOpacity(0.3), 
                    textColor: appBlueOcean),
                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Recent Uploads",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: appBlue
                    ),),
                    Spacer(),
                    GestureDetector(
                      onTap: (){},
                      child: Ink(
                        child: Container(
                          width: 30,
                          height: 30,
                          child: Image.asset('assets/icon/data.png'),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                ListTile(
                  onTap: () {
                    
                  },
                contentPadding: EdgeInsets.all(0),
                leading: 
                Container(
                width: 50,
                height: 50,
                child: Image.asset('assets/icon/wordicon.png',fit: BoxFit.contain,),
                ),
                title: Text('Projects.docx',
                style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: appBlue
                    ),),
                subtitle: Text('November 22.2020',
                style: TextStyle(
                      fontSize: 11,
                      color: appBlue.withOpacity(0.6)
                    ),),
                trailing: Text("300kb",
                style: TextStyle(
                      fontSize: 11,
                      color: appBlue.withOpacity(0.6)
                    ),),
                ),
                ListTile(
                onTap: () {
                },
                contentPadding: EdgeInsets.all(0),
                leading: 
                Container(
                width: 50,
                height: 50,
                child: Image.asset('assets/icon/wordicon.png',fit: BoxFit.contain,),
                ),
                title: Text('Projects.docx',
                style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: appBlue
                    ),),
                subtitle: Text('November 22.2020',
                style: TextStyle(
                      fontSize: 11,
                      color: appBlue.withOpacity(0.6)
                    ),),
                trailing: Text("300kb",
                style: TextStyle(
                      fontSize: 11,
                      color: appBlue.withOpacity(0.6)
                    ),),
                )
              ],
            ),
        
        ),
      ),
    );
  }
}
