import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sspi/app/components/background.dart';
import 'package:sspi/constants.dart';

class AcademiesSystem extends StatelessWidget {
  const AcademiesSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text= "1 : ক্লাসঃ সকাল- 9.00- দুপুর -2.00\n\n"
    "2 : অফিসঃ সকাল- 9.00- বিকাল-5.00\n\n"
    "3 : প্রত্যেক ছাত্রছাত্রীদে নূন্যতম মোট কার্যদিবসের ৮০% অবশ্যই ‍উপস্থিত থাকতে হবে।\n\n"
    "4 : ইন্সটিটিউটের নির্ধারিত ড্রেস পরিধা্ন করতে হয়।\n\n"
    "5 : নির্ধারিত সময়ে সেমিষ্টার ফাইনাল পরিক্ষায় অংশ গ্রহন করতে হয়।\n\n"
    "6 : বোর্ড নির্ধারিত  মধ্যপর্ব পরিক্ষায় অংশ গ্রহন করতে হয়।\n\n"
    "7 : এ ছাড়াও নিয়মিত ক্লাস টেস্ট, কুইজ, জব, এক্সপেরিমেন্ট হয়ে থাকে।\n\n"
    "9 : বোর্ড  নির্ধারিত ব্যাবহারিক পরিক্ষায় অংশ গ্রহন করতে হয়।\n\n"
    "10 : সকল বিভাগের পর্যাপ্ত ল্যাব প্রেকটিসে অংশগ্রহন করতে হয়।\n";

    return Scaffold(
      appBar: AppBar(
        title: Text("Administration".toUpperCase()),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Background(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 2),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              h10(),
              const Center(
                child: FittedBox(child: Text('সেবাপল্লী সাইন্স এন্ড পলিটেকনিক ইন্সটিটিউট',style: TextStyle(color: Colors.grey,fontSize: 20),)),
              ),
              const Center(child: Text('একাডেমিক সিস্টেম',style: TextStyle(color: kSecondaryColor,fontSize: 18,fontWeight: FontWeight.w600),)),
              h10(),
              h10(),
              Text(text,style: const TextStyle(color: kTextColor,fontSize: 18,fontWeight: FontWeight.bold),),
              SvgPicture.asset("assets/icons/end_line.svg",color: kTextColor,width: Get.width,),
              h10(),
            ],
          ),
        ),
      ),

    );
  }

  SizedBox h10() {
    return const SizedBox(
            height: 10,
          );
  }
}
