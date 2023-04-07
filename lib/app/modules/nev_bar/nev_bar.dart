import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../components/default_drawer.dart';
import '../home_page/views/home_page_view.dart';

class NevBarController extends GetxController{
  var selectedIndex = 1.obs;
  void onChange(int index){
    selectedIndex.value = index;
  }
}


class NevBar extends StatelessWidget {
  const NevBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NevBarController controller =Get.put(NevBarController());
    final screen=[
      //CGPA
      const Center(
        child: Icon(Icons.calculate_outlined,size: 200),
      ),
      //HOME
      const HomePageView(),
      //AI
      const Center(
        child: Icon(Icons.smart_toy,size: 200,),
      )
    ];

    return Obx(() => Scaffold(
      appBar: AppBar(
        elevation: 5,
        leading: Builder(builder: (context) {
          return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              splashColor: kSecondaryColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(50),
              child: const Icon(Icons.sort));
        }),
        backgroundColor: kPrimaryLightColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: (){},
              child: Stack(
                children: const [
                  Center(
                    child: Icon(Icons.notifications_none_rounded,size: 28),
                  ),
                  Positioned(
                    right: 2,
                    top: 15,
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.red,
                      child: FittedBox(child: Text("9",style: TextStyle(color: Colors.white),)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15))),
      ),
      bottomNavigationBar:  NavigationBarTheme(
        data: NavigationBarThemeData(
            elevation: 0,
            backgroundColor: kPrimaryColor,
            indicatorShape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomLeft:Radius.circular(30), )),
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            height: 60,
            labelTextStyle: MaterialStatePropertyAll(TextStyle(color: Colors.grey[600])),
            indicatorColor: Colors.cyan.withOpacity(0.2)),
        child: NavigationBar(
          elevation: 0,
          animationDuration: const Duration(milliseconds: 1200),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.onChange(index);
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.calculate_outlined, color: Colors.grey[600]),
              label: "CGPA",
              selectedIcon: const Icon(Icons.calculate,color: kSecondaryColor,),
              tooltip: "CGPA Calculator",
            ),
            NavigationDestination(
                icon: Icon(Icons.home_outlined,color: Colors.grey[600]),
                label: "HOME",
                selectedIcon: const Icon(Icons.home,color: kSecondaryColor,)),
            NavigationDestination(
                icon: Icon(Icons.smart_toy,color: Colors.grey[600]),
                label: "AI",
                selectedIcon: const Icon(Icons.smart_toy_rounded,color: kSecondaryColor,),
                tooltip: "AI (Chat GPT)"),
          ],
        ),
      ),
      drawer: const DefaultDrawer(),
      backgroundColor: kPrimaryColor,
      body: screen[controller.selectedIndex.value]
    ));
  }
}
