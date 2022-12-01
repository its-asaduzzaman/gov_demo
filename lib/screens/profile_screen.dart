import 'package:flutter/material.dart';
import 'package:gov_demo/utils/colors.dart';
import 'package:gov_demo/widgets/small_text_widget.dart';

import '../widgets/profile_icon_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Center(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.mainColor,
                    radius: 81,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 80,
                  ),
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("assets/image/profile.jpg"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade600, spreadRadius: 1, blurRadius: 2)
              ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 40,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                    child: Text(
                      "About",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Divider(color: Colors.black),
                  ProfileIconTextWidget(
                    icon: Icons.person_pin,
                    text1: "Name",
                    text2: "Asaduzzaman",
                  ),
                  const Divider(color: Colors.black),
                  ProfileIconTextWidget(
                    icon: Icons.phone_android_outlined,
                    text1: "Phone Number",
                    text2: "01746211114",
                  ),
                  const Divider(color: Colors.black),
                  ProfileIconTextWidget(
                    icon: Icons.location_on,
                    text1: "Address",
                    text2: "Rajshahi, Joypuhat, Joypurhat Sadar",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade600, spreadRadius: 1, blurRadius: 2)
              ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 40,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                    child: Text(
                      "Settings",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Divider(color: Colors.black),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 150,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.lock,
                              color: AppColors.mainColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Change Password",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Logout",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
