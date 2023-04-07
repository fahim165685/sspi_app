import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sspi/constants.dart';

import '../../../components/background.dart';
import '../../../components/default_rectangIe_button.dart';
import '../controllers/about_sspi_controller.dart';

class AboutSspiView extends GetView<AboutSspiController> {
  const AboutSspiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> buttonItem = [
      {
        'text': 'About\nShebapolly',
        'pageRoute': '/about-shebapolly',
        'icon': Icons.quiz_outlined,
      },
      {
        'text': 'About SSPI',
        'pageRoute': '/about-sspi-page',
        'icon': Icons.help_outline_outlined
      },
      {
        'text': 'Administration',
        'pageRoute': '/administration-page',
        'icon': Icons.push_pin_outlined,
      },
      {
        'text': 'Photo Gallery',
        'pageRoute': '/photo-gallery',
        'icon': Icons.photo_library_outlined,
      },
      {
        'text': 'Location',
        'pageRoute': '/location',
        'icon': Icons.location_on_outlined,
      },
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('ABOUT SSPI'),
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        body: Background(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
          itemCount: buttonItem.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) => DefaultRectangleButton(
            icon: Icon(
              buttonItem[index]['icon'],
              color: kSecondaryColor,
            ),
            title: buttonItem[index]['text'],
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
