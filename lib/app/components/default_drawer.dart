import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sspi/constants.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kPrimaryColor,
      child: background(
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
        children: [
           const UserAccountsDrawerHeader(
            accountName: Text("D. Rafiqul Islam Mollah"),
            accountEmail: Text(
              "Founder of SSPI",
            ),
            currentAccountPictureSize: Size(60, 60),
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white70,
              backgroundImage: AssetImage("assets/images/Rafiqul Islam Mollah.jpg"),
            ),
          ),
          buildListTile(
            onTap: () {
              Get.offAllNamed('/nev-bar');
            },
            icon: Icons.home_outlined,
            text: "Home",
          ),
          buildListTile(
              onTap: () {},
              icon: Icons.smart_toy_rounded,
              text: "Artificial intelligent\n(Chat GPT)",
              textColor: Colors.grey),
          buildListTile(
            onTap: () {
              Get.toNamed("/exam-result");
            },
            icon: Icons.history_edu_outlined,
            text: "Exam Result",
          ),
          buildListTile(
            onTap: () {},
            icon: Icons.calculate_outlined,
            text: "CGPA Calculate",
          ),
          buildListTile(
            onTap: () {
              Get.toNamed("/notice-page");
            },
            icon: Icons.notification_important_outlined,
            text: "Notice",
            trailing: const CircleAvatar(
              backgroundColor: Colors.red,
              radius: 10,
              child: FittedBox(
                child: Text(
                  '3',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const Divider(
            color: kTextColor,
            indent: 10,
            thickness: 1,
            endIndent: 10,
          ),
          buildListTile(
            onTap: () {
              Get.toNamed("/about-developed");
            },
            icon: Icons.app_shortcut_outlined,
            text: "About Developer",
          ),
          buildListTile(
            onTap: () {},
            icon: Icons.description_outlined,
            text: "Policies",
          ),
          const Divider(
            color: kTextColor,
            indent: 10,
            thickness: 1,
            endIndent: 10,
          ),
          buildListTile(
            onTap: (){
              showDialog<void>(
                context: context,
                builder: (BuildContext dialogContext) {
                  return AlertDialog(
                    title: Text('SSPI'),
                    content: const Text('are you sewer exit this app'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('No'),
                        onPressed: () {
                          Navigator.of(dialogContext)
                              .pop(); // Dismiss alert dialog
                        },
                      ),
                      TextButton(
                          child: const Text('Yes'),
                          onPressed: () => exit(0)
                      ),
                    ],
                  );
                },
              );
            },
            icon: Icons.exit_to_app_outlined,
            text: "Exit",
          ),


        ],
      )),
    );
  }

  Stack background({required Widget child}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
            top: 0,
            bottom: 0,
            right: -20,
            child: GestureDetector(
              onTap: () {
                print("object");
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor,
                    boxShadow: [
                      BoxShadow(
                        color: kPrimaryLightColor,
                        offset: Offset(-5, 0),
                        blurRadius: 8,
                      )
                    ]),
                child: Center(
                    child: Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: kSecondaryColor, width: 2)),
                  child: const Center(
                    child: Icon(Icons.arrow_back_ios_rounded,
                        color: kSecondaryColor),
                  ),
                )),
              ),
            )),
        Positioned(
            bottom: 20,
            right: 0,
            child: Opacity(
                opacity: 0.2,
                child: SvgPicture.asset(
                  "assets/icons/BG_Line.svg",
                  width: Get.width * 0.6,
                ))),
        child
      ],
    );
  }

  Widget buildListTile({
    required String text,
    required VoidCallback onTap,
    required IconData icon,
    Color textColor = kTextColor,
    Widget? trailing,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 2),
      child: ListTile(
        splashColor: kSecondaryColor.withOpacity(0.2),
        textColor: textColor,
        iconColor: kSecondaryColor,
        leading: Icon(icon,size: 30,),
        trailing: trailing,
        title: Text(text,
            style:
                GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w500)),
        onTap: onTap,
      ),
    );
  }
}
