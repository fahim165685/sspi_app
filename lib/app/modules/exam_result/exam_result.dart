import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ExamResult extends StatefulWidget {
  const ExamResult({Key? key}) : super(key: key);

  @override
  State<ExamResult> createState() => _ExamResultState();
}

class _ExamResultState extends State<ExamResult> {
  bool isPress = false;

  Future<void> launchUri(url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalNonBrowserApplication,
    )) {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exam Result".toUpperCase(),style: const TextStyle(color: Colors.black)),
        backgroundColor: Colors.grey[300],
        elevation: 2,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black,),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: Listener(
        onPointerUp:(event) => setState(() {
          isPress=false;
        }),
        onPointerDown: (event) => setState(() {
          isPress=true;
        }),
        child: Center(
          child: GestureDetector(
            //
            onTap: () =>launchUri("https://btebresult.com/result"),
            child: AnimatedContainer(
              duration: const Duration( milliseconds: 200),
              height: 200,
              width: 200,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color:Colors.grey[300],
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500]!,
                      offset:isPress==true? const Offset(4, 4):const Offset(-4, -4),
                      blurRadius: 15,
                    ),
                    BoxShadow(
                        color: Colors.white,
                        offset:isPress==true? const Offset(-4, -4):const Offset(4, 4),
                        blurRadius: 15,
                        spreadRadius: 1

                    )
                  ]
              ),
              child: SvgPicture.asset("assets/icons/student.svg", color: Colors.black.withOpacity(isPress==false? 1:0.7)),
            ),
          ),
        ),
      ),
    );
  }
}
