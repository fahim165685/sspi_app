import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sspi/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../components/background.dart';
import '../../../components/default_rectangIe_button.dart';
import '../controllers/academies_controller.dart';

class AcademiesView extends GetView<AcademiesController> {
  const AcademiesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    Future<void> launchUri(url) async {
      final Uri uri = Uri.parse(url);
      if (!await launchUrl(
        uri,
        mode: LaunchMode.externalNonBrowserApplication,
      )) {
        throw 'Could not launch $uri';
      }
    }
   // http://www.bteb.gov.bd/site/notices/f8434e1c-bec5-4eca-87c6-082b82efca34/Diploma-in-Engg--Syllabus-&-Course-Structure-2nd-Sem
    List<Map<String, dynamic>> buttonItem = [
      {
        'text': 'Academies\nSystem',

        'pageRoute':()=>Get.toNamed('/academies-system'),
        'icon': Icons.settings,
      },
      {
        'text': 'Syllabus',
        'pageRoute': ()=>launchUri("http://www.bteb.gov.bd/site/notices/f8434e1c-bec5-4eca-87c6-082b82efca34/Diploma-in-Engg--Syllabus-&-Course-Structure-2nd-Sem"),
        'icon': Icons.note_alt_outlined
      },
      {
        'text': 'Result',
        'pageRoute': ()=>launchUri("https://btebresult.com/result"),
        'icon': Icons.history_edu,
      },
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('ACADEMIES'),
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
                onTap: buttonItem[index]['pageRoute']

                /*() {
                  if (buttonItem[index]['pageRoute'] != '') {
                    Get.toNamed(buttonItem[index]['pageRoute']);
                  } else {
                    Get.snackbar("Warning", "No Page Found",
                        snackPosition: SnackPosition.BOTTOM,
                        icon: const Icon(Icons.warning_amber_outlined),
                        backgroundColor: kSecondaryColor,
                        margin: const EdgeInsets.symmetric(vertical: 20));
                  }
                },*/
              ),
            )));
  }
}
