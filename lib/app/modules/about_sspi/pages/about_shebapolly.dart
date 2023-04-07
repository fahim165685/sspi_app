import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sspi/app/components/background.dart';
import 'package:sspi/constants.dart';

class AboutShebapolly extends StatelessWidget {
  const AboutShebapolly({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //TODO Implement About Shebapolly
    const String aboutText =
        "মানব জাতির সার্বিক কল্যাণই সর্বশক্তিমান আল্লাহ তায়ালার সমগ্র সৃষ্টির একমাত্র উদ্দেশ্য । কিন্তু এর বাস্তব রুপ দেয়ার দায়িত্ব মানুষের নিজের । ইহা বস্তুতঃ ‘আল্লাহর একত্ববাদ ’ বা ‘তৌহিদ’ এর উপর ভিত্তি করে ‘ বৈচিত্রের মধ্যে ঐক্য’ এই নীতি ভিত্তিক একটি সভ্যতা গড়ে তোলার একটি আন্দোলন। এর বাস্তবায়নের মাধ্যম হবে মানব সেবা ও নৈতিকতার উন্নয়ন ও প্রসার। এই প্রত্যাসায়\n"
        "প্রথমতঃ সেবাপল্লী নামে একটি মাঠ পর্যায়ে প্রকল্প প্রতিষ্ঠার মাধ্যমে লাভবিহীন এক দাতবৗ নীতির ভিত্তিতে বিভিন্ন প্রয়োজনীয় সামাজিক সেবা সরাসরি প্রধান করা হবে, এবং\nবীতিয়তঃ ধর্মভিত্তিক বুদ্ধিচর্চা ফোরাম নামে একটি বুদ্ধিবৃত্তি প্রকল্পর প্রতিষ্ঠর মাধ্যমে ধর্মভিত্তিক বুদ্ধিবৃত্তির বিকাশ ও প্রসার করা হবে।\n"
        "প্রতিষ্ঠাতাঃ সেবাপল্লী- ভাদুঘর, ব্রাহ্মণবাড়িয়া পৌর এলাকায় ভাদুঘর নিবাসী মরহুম আলী আজ্জম মোল্লা ও মরহুমা হালিমা খাতুনের পরিবারের সমাজ সেবা প্রয়াসে নিয়োজিত মূলত একটি দাতব্য প্রতিষ্ঠান। পল্লী অঞ্চলে সেবা প্রদান মূলত ইহার প্রধান লক্ষ্য বলে ইহার নাম সেবাপল্লী। ইহা তাঁদেরই সন্তান প্রফেসর ডক্টর রফিকুল ইছলাম মোল্লার উদ্যোগে ও নেতৃত্বে ২০০২ সালে গঠিত বাংলাদেশ সার্বিক সামাজিক উন্নয়ন সংঘের মাঠ পর্যায়ে বাস্তবমূখী কার্যকর প্রকল্পের (Action project) আওতায় প্রতিষ্ঠিত একটি সামাজিক প্রতিষ্ঠান (Social enterprise)। বিভিন্ন প্রকল্পের মাধ্যমে বহুমূখী সেবা প্রদান ইহার লক্ষ্য।\n"
        "প্রদানকৃত সেবা সমূহঃ সমাজের দুর্বল ও সুবিধাবঞ্চিত জনগোষ্ঠির ক্ষমতায়ন ও মুক্তির লক্ষ্যে,‘সেবা নেবেন প্রয়োজন যত দাম দেবেন ক্ষমতা মত’ এই লাভ বিহীন ও দাতব্য নীতির ভিত্তিতে এখানে নিম্ন বর্ণিত ৬ প্রকার আধুনিক ও মান সম্মত সামাজিক সেবা প্রধান করা হয়ঃ";

    const String text2 =
        "● ১। স্বাস্থ্য সেবাঃ মূলনীতি- সর্বাগ্যে স্বাস্থ, সবার জন্য স্বাস্থ।\n\n"
        "● ২। শিক্ষা ও ধমীয় সেবাঃ মূলনীতি- প্রাথমিক শিক্ষা ও ধর্মকর্মে সকলের অধিকার।\n\n"
        "● ৩। কর্মসংস্থান সেবাঃ মূলনীতি – সকলের কর্ম ও জীবিকার অধিকার অধিকার।\n\n"
        "● ৪। আইনি সেবাঃ মূলনীতি – সকলের ন্যায় বিচারের অধিকার\n\n"
        "● ৫। সামাজিক ও সাংস্কৃতিক সেবাঃ মূলনীতি- সকলের নিজস্ব সাংস্কৃতিক চর্চা করা এবং মর্যাদার সঙ্গে জীবন যাপন করার অধিকার।\n\n"
        "● ৬। কৃষি সেবাঃ মূলনীতি – আধুনিক কৃষি প্রযুক্তি ব্যবহারের সুযোগ সকল কৃষকের অধিকার।এরই জন্য একানে হাস পাতাল , নার্সিং স্কুল, কর্মসৃষ্টি কেন্দ্র, সেবা কেন্দ্র ও সেবা ক্লাব প্রতিষ্ঠা করা হয়েছে।\n";

    return Scaffold(
      appBar: AppBar(
        title: Text("About Shebapolly".toUpperCase()),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Background(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              h10(),
              Text("About Shebapolly".toUpperCase(),
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: kSecondaryColor)),
              h10(),
              Text("সেবাপল্লী-ভাদুঘর-ব্রাহ্মণবাড়িয়া",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: kSecondaryColor.withOpacity(0.5))),
              h10(),
              h10(),
              const SelectableText(aboutText,
                  style: TextStyle(fontSize: 18, color: kTextColor)),
              h10(),
              const SelectableText(text2,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontWeight: FontWeight.w500)),

             // h10(),
              SvgPicture.asset("assets/icons/end_line.svg",color: kTextColor,width: Get.width,),
               h10(),
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
