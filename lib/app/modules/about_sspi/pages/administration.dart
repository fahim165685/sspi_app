import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sspi/app/components/background.dart';
import 'dart:math'as math;

import '../../../../constants.dart';

class AdministrationPage extends StatelessWidget {
  const AdministrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Administration".toUpperCase()),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      floatingActionButton: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
            fixedSize: const MaterialStatePropertyAll(Size.fromHeight(50)),
            backgroundColor:
                const MaterialStatePropertyAll(Colors.purpleAccent)),
        onPressed: () {},
        child: const Text("Admission Notice ‣>",style: TextStyle(fontSize: 18),),
      ),
      body: Background(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Transform.rotate(
                angle: math.pi,
                  child: SvgPicture.asset("assets/icons/end_line.svg",color: kTextColor,width: Get.width,)),
              h10(),

              RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(
                    text:
                        "আমরা অত্যান্ত আনন্দিত ও গর্বিত যে,  ব্রাহ্মণবাড়িয়া সদরের  সরকার কর্তৃক অনুমোদিত একমাত্র কারিগরি  শিক্ষা প্রতিষ্ঠান ",
                    style: TextStyle(color: kTextColor, fontSize: 18),
                    children: [
                      TextSpan(
                          text: "সেবাপল্লী  সাইন্স এন্ড পলিটেকনিক ইন্সটিটিউট ",
                          style: TextStyle(color: Colors.purpleAccent)),
                      TextSpan(
                          text:
                              "– এ আগষ্ট ২০১৭ থেকে শিক্ষা কার্যক্রম  শুরু করেছে\n\n"),
                      TextSpan(
                          text: "ভর্তি যোগ্যতাঃ ",
                          style: TextStyle(color: Colors.purpleAccent)),
                      TextSpan(
                          text:
                              "২০০৮ থেকে ২০১৭ পর্যন্ত এস.এস.সি/দাখিল অথবা সমমান পরিক্ষায় নূন্যতম "),
                      TextSpan(
                          text: "জি.পি. এ  ২.০০ ",
                          style: TextStyle(color: Colors.purpleAccent)),
                      TextSpan(text: "থাকতে হবে |")
                    ]),
              ),
              h10(),
              SvgPicture.asset("assets/icons/end_line.svg",color: kTextColor,width: Get.width,),
              h10(),
              h10(),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: const LinearGradient(colors: [
                            kPrimaryColor,
                            kSecondaryColor,
                          ])),
                    ),
                  ),
                  Text(" More Information  ".toUpperCase(),
                      style: GoogleFonts.roboto(
                          color: Colors.white, fontSize: 18)),
                  Expanded(
                    child: Container(
                      height: 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: const LinearGradient(
                              colors: [kSecondaryColor, kPrimaryColor])),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "Call Now ".toUpperCase(),
                  style: GoogleFonts.roboto(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: kSecondaryColor),
                ),
              ),
              h10(),
              Center(
                  child: SelectableText(
                "01722-452791".toUpperCase(),
                style: GoogleFonts.roboto(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
              Center(
                  child: SelectableText(
                "OR".toUpperCase(),
                style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kSecondaryColor),
              )),
              Center(
                  child: SelectableText(
                "01909-430210".toUpperCase(),
                style: GoogleFonts.roboto(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),

            ],
          ),
        ),
      ),
    );
  }

  SizedBox h10() => const SizedBox(
        height: 10,
      );
}
