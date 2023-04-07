import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sspi/constants.dart';

import '../../../components/default_button.dart';
import '../../../components/image_slider.dart';
import '../../../components/search_filed.dart';
import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> buttonItem = [
      {
        'text': 'About SSPI',
        'pageRoute': 'about-sspi',
        'icon':'assets/icons/about_us.svg'
      },
      {
        'text': 'Academies',
        'pageRoute': '/academies',
        'icon':'assets/icons/Academic.svg'
      },
      {
        'text': 'Department',
        'pageRoute': '/department',
        'icon':'assets/icons/department.svg'
      },
      {
        'text': 'Teachers List',
        'pageRoute': '/teacher-page',
        'icon':'assets/icons/teacher.svg'
      },
     /* {
        'text': 'Student List',
        'pageRoute': '',
        'icon':'assets/icons/student.svg'
      },*/
      {
        'text': 'Routine',
        'pageRoute': '/routine-page',
        'icon':'assets/icons/routine.svg'
      },
      {
        'text': 'Exam Result',
        'pageRoute': '/exam-result',
        'icon':'assets/icons/student.svg'
      },
      {
        'text': 'Notice',
        'pageRoute': '/notice-page',
        'icon':'assets/icons/notice.svg'

      },
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          //Search Field
          const ImageSlider(),
          //Search Field
          const SearchFiled(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
                children: List.generate(
                  buttonItem.length,
                      (index) => DefaultButton(
                    onTap: () {
                      if (buttonItem[index]['pageRoute'] != '') {
                        Get.toNamed(buttonItem[index]['pageRoute']);
                      } else {
                        Get.snackbar("Warning", "No notice available right now",
                            snackPosition: SnackPosition.BOTTOM,
                            icon: const Icon(Icons.warning_amber_outlined),
                            backgroundColor: kSecondaryColor,
                            margin: const EdgeInsets.symmetric(vertical: 20));
                      }
                    },
                    text: buttonItem[index]['text'],
                    enableIcon: true,
                        icon: SvgPicture.asset(buttonItem[index]['icon']),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}


