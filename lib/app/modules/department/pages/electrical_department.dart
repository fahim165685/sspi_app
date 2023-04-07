import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sspi/app/components/background.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../components/custom_switch.dart';

class EDController extends GetxController {
  var isOn = false.obs;

  void onChange() {
    if (isOn.value == true) {
      isOn.value = false;
    } else {
      isOn.value = true;
    }
  }
}

class ElectricalDepartment extends StatelessWidget {
  const ElectricalDepartment({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    EDController controller = Get.put(EDController());

    List<Map<String, String>> aboutENG = [
      {
        'title': "Diploma In Electrical Engineering Program Objective.",
        'subTitle': "Diploma in Electrical Engineering program can be a good choice for your career. At Diploma in Electrical Engineering Sector  students have huge potential to build a career. An Electrical Engineer has the opportunity to work in a government / autonomous / non-governmental organization. Employment Opportunities in Electrical Power Generation and Distribution Company, Telecommunication Industry, IT, RMG, BREB, PWD, DESA, DESCO, R&H, BPDB, MES, DPDC, PGCB, and various service sectors. Also, an diploma electrical engineer can establish himself as an entrepreneur by setting up small or medium scale industrial factories.\n\n",
      },
      {
        'title': "Diploma In Electrical Engineering Duration And Assessment",
        'subTitle': "Diploma in Electrical Engineering is a 4-year long program consisting of 8 semesters (1 Semester = 6 months). The final and the midterm exams of each semester is conducted under the supervision of the Bangladesh Technical Education Board (BTEB). All the exams question, answer script checking and final results are published by the BTEB. Besides this, each student has to attend the regular class test, quiz test, and semester final project. After successful completion, a student will receive a Diploma in Electrical Engineering Certificate.\n\n"
            "The Admission procedure starts after the SSC results. There is mainly one session in a year. Students have to follow the admission announcement which is given by the Bangladesh Technical Education Board Authority. Usually, the admission procedure starts after May (depending on the SSC Result).",
      },
      {
        'title': "CAREER PROSPECTS",
        'subTitle': "Electrical engineers are instrumental in revolutionizing the lives of modern man. They are required by the industries manufacturing all the household and office appliances like refrigerators, televisions, computer, microwaves and what not. In our age of satellite-transmitted television and transcontinental computer networks, these engineers are high in demand. Electrical engineers also find employment in atomic power plants, hydroelectric power plants as well as thermal power plants. So, you should check out all private job circular as well as govt. job circular. Job responsibilities include specification, design, development, and implementation of products or systems, as well as research to create new ideas.",
      },
      {
        'title': "CAREER PATH",
        'subTitle':
        "Electrical engineers use physics, electronics and electromagnetism to design devices that are powered by or produce electricity. Electrical engineers work on anything from small pocket devices to large aircraft electrical systems. Engineers test prototypes and evaluate and improve systems. Nearly every industry has a place for an electrical engineer, including government, transportation, communications, technology and utilities.",
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
        'title': "ডিপ্লোমা ইন ইলেকট্রিক্যাল ইঞ্জিনিয়ারিং প্রোগ্রামের উদ্দেশ্য",
        'subTitle':"ডিপ্লোমা ইন ইলেকট্রিক্যাল ইঞ্জিনিয়ারিং প্রোগ্রাম আপনার ক্যারিয়ারের জন্য একটি ভাল পছন্দ হতে পারে। ডিপ্লোমা ইন ইলেকট্রিক্যাল ইঞ্জিনিয়ারিং সেক্টরে শিক্ষার্থীদের ক্যারিয়ার গড়ার বিপুল সম্ভাবনা রয়েছে। একজন ইলেকট্রিক্যাল ইঞ্জিনিয়ারের সরকারি/স্বায়ত্তশাসিত/বেসরকারি প্রতিষ্ঠানে কাজ করার সুযোগ রয়েছে। ইলেকট্রিক্যাল পাওয়ার জেনারেশন অ্যান্ড ডিস্ট্রিবিউশন কোম্পানি, টেলিকমিউনিকেশন ইন্ডাস্ট্রি, আইটি, আরএমজি, বিআরইবি, পিডব্লিউডি, ডেসা, ডেসকো, আরএন্ডএইচ, বিপিডিবি, এমইএস, ডিপিডিসি, পিজিসিবি, এবং বিভিন্ন পরিষেবা খাতে কর্মসংস্থানের সুযোগ। এছাড়াও, একজন ডিপ্লোমা ইলেকট্রিক্যাল ইঞ্জিনিয়ার ছোট বা মাঝারি শিল্প কারখানা স্থাপন করে নিজেকে একজন উদ্যোক্তা হিসেবে প্রতিষ্ঠিত করতে পারেন।\n\n",
      },
      {
        'title':
        "ডিপ্লোমা ইন ইলেকট্রিক্যাল ইঞ্জিনিয়ারিং সময়কাল এবং মূল্যায়ন",
        'subTitle':"বৈদ্যুতিক প্রকৌশলে ডিপ্লোমা একটি 4 বছরের দীর্ঘ প্রোগ্রাম যা 8 সেমিস্টার (1 সেমিস্টার = 6 মাস) নিয়ে গঠিত। প্রতিটি সেমিস্টারের চূড়ান্ত ও মাধ্যমিক পরীক্ষা বাংলাদেশ কারিগরি শিক্ষা বোর্ডের (বিটিইবি) তত্ত্বাবধানে পরিচালিত হয়। সমস্ত পরীক্ষার প্রশ্ন, উত্তর স্ক্রিপ্ট পরীক্ষা এবং চূড়ান্ত ফলাফল BTEB দ্বারা প্রকাশিত হয়। এছাড়াও, প্রতিটি শিক্ষার্থীকে নিয়মিত ক্লাস পরীক্ষা, কুইজ পরীক্ষা এবং সেমিস্টার ফাইনাল প্রকল্পে অংশগ্রহণ করতে হবে। সফলভাবে সমাপ্তির পরে, একজন ছাত্র ইলেকট্রিক্যাল ইঞ্জিনিয়ারিং সার্টিফিকেট একটি ডিপ্লোমা পাবেন।\n\n"
            "এসএসসি ফলাফলের পর ভর্তি প্রক্রিয়া শুরু হয়। বছরে একটি অধিবেশন হয়। শিক্ষার্থীদের বাংলাদেশ কারিগরি শিক্ষা বোর্ড কর্তৃপক্ষ কর্তৃক প্রদত্ত ভর্তি বিজ্ঞপ্তি অনুসরণ করতে হবে। সাধারণত, মে মাসের পরে ভর্তি প্রক্রিয়া শুরু হয় (এসএসসি ফলাফলের উপর নির্ভর করে)।",
      },
      {
        'title': "কর্মজীবনের সাফল্য",
        'subTitle': "বৈদ্যুতিক প্রকৌশলীরা আধুনিক মানুষের জীবনে বিপ্লব ঘটাতে সহায়ক। রেফ্রিজারেটর, টেলিভিশন, কম্পিউটার, মাইক্রোওয়েভ এবং কী কী নয় এমন সমস্ত গৃহস্থালী এবং অফিসের যন্ত্রপাতি তৈরিকারী শিল্পগুলির দ্বারা তাদের প্রয়োজন হয়। আমাদের স্যাটেলাইট-ট্রান্সমিটেড টেলিভিশন এবং ট্রান্সকন্টিনেন্টাল কম্পিউটার নেটওয়ার্কের যুগে, এই ইঞ্জিনিয়ারদের চাহিদা বেশি। বৈদ্যুতিক প্রকৌশলীরা পারমাণবিক বিদ্যুৎকেন্দ্র, জলবিদ্যুৎ কেন্দ্রের পাশাপাশি তাপবিদ্যুৎ কেন্দ্রেও চাকরি খুঁজে পান। সুতরাং, আপনার উচিত সমস্ত বেসরকারী চাকরির সার্কুলার পাশাপাশি সরকারী পরীক্ষা করা। কাজের বিজ্ঞপ্তি. কাজের দায়িত্বের মধ্যে রয়েছে স্পেসিফিকেশন, ডিজাইন, ডেভেলপমেন্ট এবং পণ্য বা সিস্টেমের বাস্তবায়ন, সেইসাথে নতুন ধারণা তৈরির জন্য গবেষণা।",
      },
      {
        'title': "পেশাগত পথ",
        'subTitle': "বৈদ্যুতিক প্রকৌশলীরা এমন ডিভাইস ডিজাইন করতে পদার্থবিদ্যা, ইলেকট্রনিক্স এবং ইলেক্ট্রোম্যাগনেটিজম ব্যবহার করে যা বিদ্যুৎ দ্বারা চালিত বা উত্পাদন করে। বৈদ্যুতিক প্রকৌশলীরা ছোট পকেট ডিভাইস থেকে শুরু করে বড় বিমানের বৈদ্যুতিক সিস্টেমে কাজ করে। ইঞ্জিনিয়াররা প্রোটোটাইপ পরীক্ষা করে এবং সিস্টেমের মূল্যায়ন ও উন্নতি করে। সরকার, পরিবহন, যোগাযোগ, প্রযুক্তি এবং ইউটিলিটি সহ প্রায় প্রতিটি শিল্পে একজন বৈদ্যুতিক প্রকৌশলীর জন্য একটি জায়গা রয়েছে।",
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
      appBar: AppBar(
        title: const Text('Electrical Technology',
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
      floatingActionButton: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)))),
        onPressed: () {
          launchUri("http://btebadmission.gov.bd/website/govtdipengg/index.html");
          /*Get.snackbar(
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
