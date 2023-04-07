import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../../constants.dart';
import '../../../components/background.dart';
import '../../../components/default_rectangIe_button.dart';
import '../controllers/department_controller.dart';

class DepartmentView extends GetView<DepartmentController> {
  const DepartmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> buttonItem = [
      {
        'title': 'Computer',
        'pageRoute': '/computer-department',
        'icon': 'assets/icons/computer_department.svg',
      },
      {
        'title': 'Electrical',
        'pageRoute': '/electrical-department',
        'icon': 'assets/icons/electrician_department.svg'
      },
      {
        'title': 'CIVIL',
        'pageRoute': '/civil-department',
        'icon': 'assets/icons/civil_department.svg',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Department'.toUpperCase()),
        centerTitle: true,
      ),
      body: Background(
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: buttonItem.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) => DefaultRectangleButton(
              icon: SvgPicture.asset(buttonItem[index]['icon']),
              title: buttonItem[index]['title'],
              subTitleOn: true,
              subTitle: 'Technology',
              onTap:  () {
                if (buttonItem[index]['pageRoute'] != '') {
                  Get.toNamed(buttonItem[index]['pageRoute']);
                } else {
                  Get.snackbar("Warning", "No Page Found",
                      snackPosition: SnackPosition.BOTTOM,
                      icon: const Icon(Icons.warning_amber_outlined),
                      backgroundColor: kSecondaryColor,
                      margin: const EdgeInsets.symmetric(vertical: 20));
                }
              },
            ),
          )));
  }
}
