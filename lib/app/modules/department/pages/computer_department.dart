import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sspi/app/components/background.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../components/custom_switch.dart';

class CDController extends GetxController {
  var isOn = false.obs;

  void onChange() {
    if (isOn.value == true) {
      isOn.value = false;
    } else {
      isOn.value = true;
    }
  }
}

class ComputerDepartment extends StatelessWidget {
  const ComputerDepartment({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CDController controller = Get.put(CDController());

    List<Map<String, String>> aboutENG = [
      {
        'title': "Diploma In Computer Engineering Program Objective.",
        'subTitle': "Diploma in Computer Engineering program can be a good choice for your career. Now Computers are an amazing creation of science and technology development. For the last twenty years, the computer industry has been described as the fastest growing industry worldwide. Research has shown that since 1998,"
            "most jobs have been created worldwide in computer and computer-related fields. With the development of computer and communication technology, there has been a huge change in the workplace of every government and non-government organization. Therefore, from healthcare to business, educational institutions have created endless opportunities for career building in all fields.\n\n"
            "As a result of this globalization, a student now has the opportunity to build a career beyond the borders of the country at the international level. There are lots of student consultancy firm in Bangladesh. But its success largely depends on the student’s timely decision. After completing the Diploma in Computer Engineering course at polytechnic institute under Bangladesh Technical Education Board, a student gets ample opportunity to work in various fields including programming, software firm, IT firm, industrial factory in different government and non-government organizations.",
      },
      {
        'title':
            "Diploma in Computer Science & Engineering Course Duration And Assessment",
        'subTitle':
            "Diploma in computer science and engineering is a 4-year long program consisting of 8 semesters (1 Semester = 6 months). The final and the midterm exams of each semester are conducted under the supervision of the Bangladesh Technical Education Board (BTEB). All the exams question, answer script checking and final results are published by the BTEB. Besides this, each student has to attend the regular class test, quiz test, and semester final project. After successful completion, a student will receive a Diploma Certificate."
                "There are many students who are interested in a diploma in computer science in Bangladesh. If you are one of them, apply for the computer diploma course in Bangladesh now!  The Admission procedure starts after the SSC results. So, you can start a diploma in computer engineering course after 10th. There is mainly one session in a year. Students have to follow the admission announcement which is given by the Bangladesh Technical Education Board Authority. Usually, the admission procedure starts after May (depending on the SSC Result)\n",
      },
      {
        'title': "Career Prospects Of Diploma In Computer Engineering",
        'subTitle':
            "A four years long Diploma in Computer Engineering is highly valued today, among the young generation for its work/job-oriented approaches, syllabuses. After completing SSC, a student can join in this course and receive the status of a Diploma Engineer, from where they can enter the job field so easily. Daffodil Polytechnic Institute is one of the best private Polytechnic institutes of Bangladesh that provides technical education in Bangladesh with ensuring quality",
      },
      {
        'title': "Career Path",
        'subTitle':
            "Compare the best computer jobs by employment projections, key growth factors, salary and more, then click the links of your favorite IT career paths for deep dive career profiles featuring skills and responsibilities, desirable certifications, wage analyses, education requirements, training & degree programs, local job openings and tips from IT insiders.",
      },
      {
        'title': "Admission Eligibility",
        'subTitle':
            "Minimum SSC equivalent from any discipline with minimum GPA: 2.00 .\n"
                "HSC (Science) Students can directly join in 3rd Semester\n& HSC (Vocational) students can directly join in 4th Semester.( Passing year 2011, GPA: 2.00 )",
      },
      {
        'title': "Admission Guidelines",
        'subTitle':
            "Students are advice to collect admission form the admission office.\n\nTo confirm the admission, students must submit\n\n"
                "● – 4 copy of recent PP size photo\n"
                "● – Main copy of SSC transcript\n"
                "● – Photocopy of Parent’s NID Card.\n"
                "● – Along with the properly filled admission form.\n\n"
                "NOTE: Students will be admitted for the limited seats.\n",
      },
    ];
    List<Map<String, String>> aboutBAN = [
      {
        'title': "ডিপ্লোমা ইন কম্পিউটার ইঞ্জিনিয়ারিং প্রোগ্রামের উদ্দেশ্য",
        'subTitle':
            "ডিপ্লোমা ইন কম্পিউটার ইঞ্জিনিয়ারিং প্রোগ্রাম আপনার ক্যারিয়ারের জন্য একটি ভাল পছন্দ হতে পারে। এখন কম্পিউটার বিজ্ঞান ও প্রযুক্তির উন্নয়নের এক বিস্ময়কর সৃষ্টি। গত বিশ বছর ধরে, কম্পিউটার শিল্পকে বিশ্বব্যাপী দ্রুত বর্ধনশীল শিল্প হিসাবে বর্ণনা করা হয়েছে। গবেষণায় দেখা গেছে যে 1998 সাল থেকে, কম্পিউটার এবং কম্পিউটার-সংক্রান্ত ক্ষেত্রে বিশ্বব্যাপী সবচেয়ে বেশি চাকরি তৈরি হয়েছে। কম্পিউটার ও যোগাযোগ প্রযুক্তির উন্নয়নের ফলে প্রতিটি সরকারি-বেসরকারি প্রতিষ্ঠানের কর্মক্ষেত্রে ব্যাপক পরিবর্তন এসেছে। তাই স্বাস্থ্যসেবা থেকে শুরু করে ব্যবসা, শিক্ষা প্রতিষ্ঠান সব ক্ষেত্রে ক্যারিয়ার গড়ার অফুরন্ত সুযোগ তৈরি করেছে।\n\n"
                "এই বিশ্বায়নের ফলে একজন শিক্ষার্থী এখন দেশের সীমানা ছাড়িয়ে আন্তর্জাতিক পর্যায়ে ক্যারিয়ার গড়ার সুযোগ পেয়েছে। বাংলাদেশে প্রচুর স্টুডেন্ট কনসালটেন্সি ফার্ম রয়েছে। তবে এর সাফল্য মূলত শিক্ষার্থীর সময়োপযোগী সিদ্ধান্তের উপর নির্ভর করে। বাংলাদেশ কারিগরি শিক্ষা বোর্ডের অধীনে পলিটেকনিক ইনস্টিটিউটে ডিপ্লোমা ইন কম্পিউটার ইঞ্জিনিয়ারিং কোর্স সম্পন্ন করার পর একজন শিক্ষার্থী বিভিন্ন সরকারি-বেসরকারি প্রতিষ্ঠানে প্রোগ্রামিং, সফটওয়্যার ফার্ম, আইটি ফার্ম, শিল্প কারখানাসহ বিভিন্ন ক্ষেত্রে কাজ করার যথেষ্ট সুযোগ পায়।",
      },
      {
        'title':
            "ডিপ্লোমা ইন কম্পিউটার সায়েন্স অ্যান্ড ইঞ্জিনিয়ারিং কোর্সের সময়কাল এবং মূল্যায়ন",
        'subTitle':
            "ডিপ্লোমা ইন কম্পিউটার সায়েন্স অ্যান্ড ইঞ্জিনিয়ারিং একটি 4 বছরের দীর্ঘ প্রোগ্রাম যা 8 সেমিস্টার (1 সেমিস্টার = 6 মাস) নিয়ে গঠিত। প্রতিটি সেমিস্টারের চূড়ান্ত ও মাধ্যমিক পরীক্ষা বাংলাদেশ কারিগরি শিক্ষা বোর্ডের (বিটিইবি) তত্ত্বাবধানে পরিচালিত হয়। সমস্ত পরীক্ষার প্রশ্ন, উত্তর স্ক্রিপ্ট পরীক্ষা এবং চূড়ান্ত ফলাফল BTEB দ্বারা প্রকাশিত হয়। এছাড়াও, প্রতিটি শিক্ষার্থীকে নিয়মিত ক্লাস পরীক্ষা, কুইজ পরীক্ষা এবং সেমিস্টার ফাইনাল প্রকল্পে অংশগ্রহণ করতে হবে। সফলভাবে সমাপ্তির পরে, একজন শিক্ষার্থী একটি ডিপ্লোমা সার্টিফিকেট পাবে।\n\n"
                "বাংলাদেশে কম্পিউটার সায়েন্সে ডিপ্লোমা করতে আগ্রহী অনেক শিক্ষার্থী রয়েছে। আপনি যদি তাদের একজন হয়ে থাকেন তাহলে বাংলাদেশে কম্পিউটার ডিপ্লোমা কোর্সের জন্য এখনই আবেদন করুন! এসএসসি ফলাফলের পর ভর্তি প্রক্রিয়া শুরু হয়। সুতরাং, আপনি 10 তম পরে কম্পিউটার ইঞ্জিনিয়ারিং কোর্সে একটি ডিপ্লোমা শুরু করতে পারেন। বছরে একটি অধিবেশন হয়। শিক্ষার্থীদের বাংলাদেশ কারিগরি শিক্ষা বোর্ড কর্তৃপক্ষ কর্তৃক প্রদত্ত ভর্তি বিজ্ঞপ্তি অনুসরণ করতে হবে। সাধারণত, মে মাসের পরে ভর্তি প্রক্রিয়া শুরু হয় (এসএসসি ফলাফলের উপর নির্ভর করে)।",
      },
      {
        'title': "কম্পিউটার ইঞ্জিনিয়ারিং ডিপ্লোমা ক্যারিয়ার সম্ভাবনা ",
        'subTitle':
            "কম্পিউটার ইঞ্জিনিয়ারিং-এ চার বছরের ডিপ্লোমা আজকে তরুণ প্রজন্মের কাছে তার কাজ/চাকরি-ভিত্তিক পদ্ধতির, পাঠ্যক্রমের জন্য অত্যন্ত মূল্যবান। এসএসসি শেষ করার পর, একজন শিক্ষার্থী এই কোর্সে যোগ দিতে পারে এবং ডিপ্লোমা ইঞ্জিনিয়ারের মর্যাদা পেতে পারে, যেখান থেকে তারা খুব সহজেই চাকরির ক্ষেত্রে প্রবেশ করতে পারে। ড্যাফোডিল পলিটেকনিক ইনস্টিটিউট বাংলাদেশের সেরা বেসরকারি পলিটেকনিক ইনস্টিটিউটগুলির মধ্যে একটি যা বাংলাদেশে কারিগরি শিক্ষার গুণগত মান নিশ্চিত করে।",
      },
      {
        'title': "পেশাগত পথ",
        'subTitle':
            "কর্মসংস্থান অনুমান, মূল বৃদ্ধির কারণ, বেতন এবং আরও অনেক কিছু দ্বারা সেরা কম্পিউটার চাকরির তুলনা করুন, তারপর দক্ষতা এবং দায়িত্ব, পছন্দসই সার্টিফিকেশন, মজুরি বিশ্লেষণ, শিক্ষার প্রয়োজনীয়তা, প্রশিক্ষণ এবং ডিগ্রি প্রোগ্রাম সমন্বিত গভীর ডুব ক্যারিয়ার প্রোফাইলের জন্য আপনার প্রিয় আইটি ক্যারিয়ারের পথের লিঙ্কগুলিতে ক্লিক করুন। , স্থানীয় চাকরির সুযোগ এবং আইটি অভ্যন্তরীণ থেকে টিপস।",
      },
      {
        'title': "ভর্তির যোগ্যতা",
        'subTitle':
            "ন্যূনতম জিপিএ: 2.00 সহ যেকোনো শাখা থেকে ন্যূনতম এসএসসি সমমান।\n\nএইচএসসি (বিজ্ঞান) শিক্ষার্থীরা সরাসরি ৩য় সেমিস্টারে যোগ দিতে পারবে\nএবং এইচএসসি (ভোকেশনাল) শিক্ষার্থীরা সরাসরি ৪র্থ সেমিস্টারে যোগ দিতে পারবে।",
      },
      {
        'title': "ভর্তি নির্দেশিকা",
        'subTitle':
            "শিক্ষার্থীদের ভর্তি অফিসে ভর্তির ফরম সংগ্রহ করার পরামর্শ দেওয়া হচ্ছে।"
                "ভর্তি নিশ্চিত করতে, শিক্ষার্থীদের অবশ্যই জমা দিতে হবে"
                "● – সাম্প্রতিক পিপি সাইজের ছবির 4 কপি\n"
                "● – এসএসসি ট্রান্সক্রিপ্টের মূল কপি\n"
                "● – পিতামাতার NID কার্ডের ফটোকপি।\n"
                "● – সঠিকভাবে পূরণ করা ভর্তি ফরম সহ।\n\n"
                "বিঃদ্রষ্টব্য: সীমিত আসনের জন্য শিক্ষার্থী ভর্তি করা হবে।\n",
      },
    ];

    Future<void> launchUri(url) async {
      final Uri uri = Uri.parse(url);
      if (!await launchUrl(
        uri,
        mode: LaunchMode.externalNonBrowserApplication,
      )) {
        throw 'Could not launch $uri';
      }
    }

    return Obx(() => Scaffold(
          floatingActionButton: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)))),
            onPressed: () {
              launchUri("http://btebadmission.gov.bd/website/govtdipengg/index.html");
           /*   Get.snackbar(
                  'Error!', "Something was wrong, please try again later",
                  snackPosition: SnackPosition.BOTTOM,
                colorText: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 8),
                icon: const Icon(Icons.warning_amber_rounded,size: 35,),
                backgroundColor: Colors.red.withOpacity(0.5),
              );*/
            },
            child: const Text('Apply Now >'),
          ),
          appBar: AppBar(
            title: const Text('Computer Technology',
                style: TextStyle(fontSize: 19)),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: CustomSwitch(
                  value: controller.isOn.value,
                  offValue: "EN",
                  onValue: "বাং",
                  size: 25,
                  onChange: () {
                    controller.onChange();
                  },
                ),
              )
            ],
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
            child: Background(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/computer_banner.jpg'),
                    ...List.generate(
                        (controller.isOn.value == true)
                            ? aboutBAN.length
                            : aboutENG.length,
                        (index) => Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SelectableText(
                                    (controller.isOn.value == true)
                                        ? aboutBAN[index]['title']!
                                        : aboutENG[index]['title']!,
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.notoSans(
                                        fontSize: 25,
                                        color: Colors.grey[200],
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SelectableText(
                                    (controller.isOn.value == true)
                                        ? aboutBAN[index]['subTitle']!
                                        : aboutENG[index]['subTitle']!,
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.roboto(
                                        fontSize: 18, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
