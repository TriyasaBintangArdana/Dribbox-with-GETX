import 'package:dirbbox/app/constant/color.dart';
import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: Get.width,
            child: Image.asset('assets/images/pic2.png', fit: BoxFit.contain),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 125),
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/images/pic1.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 10),
                Text('Welcome To', style: TextStyle(fontSize: 20)),
                Text(
                  'Dribbox',
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 250,
                  child: Text(
                    'Best cloud storage platform for all business and individuals to manage there data \n\nJoin For Free.',
                    style: TextStyle(fontSize: 14, color: appPurpleLight),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.offAllNamed(Routes.HOME);
                      },
                      child: Row(
                        children: [
                          Image.asset('assets/icon/finger.png'),
                          SizedBox(width: 5),
                          Text(
                            'Smart Id',
                            style: TextStyle(
                              fontSize: 16,
                              color: appBlueOceanChart,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: appBlueOceanChart.withOpacity(0.1),
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'Sign in',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Image.asset('assets/icon/arrow-right.png'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 11,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: appBlueOceanChart,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Center(
                  child: Text(
                    'Use Social Login',
                    style: TextStyle(color: Color(0xFF1B1D28), fontSize: 12),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/icon/instagram.png'),
                    ),
                    const SizedBox(width: 10,),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/icon/twitter.png'),
                    ),
                    const SizedBox(width: 10,),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/icon/facebook.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 17),
               Center(
                 child: TextButton(
                        onPressed: () {},
                        child: Text('Create an account',
                        style: TextStyle(color: Color(0xFF1B1D28), fontSize: 16)),
                      ),
               ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
