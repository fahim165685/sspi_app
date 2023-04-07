import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sspi/app/components/background.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../components/custom_switch.dart';

class CVDController extends GetxController {
  var isOn = false.obs;

  void onChange() {
    if (isOn.value == true) {
      isOn.value = false;
    } else {
      isOn.value = true;
    }
  }
}

class CivilDepartment extends StatelessWidget {
  const CivilDepartment({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CVDController controller = Get.put(CVDController());

    List<Map<String, String>> aboutENG = [
      {
        'title': "Diploma In Civil Engineering Objective",
        'subTitle': "A Diploma in Civil Engineering program can be a good choice for your career. An important branch of modern engineering & technology is civil engineering, the main subject of which is planning, design, and structural execution. These include various challenging facilities including public works design supervision and construction activities like roads, bridges, tunnels, buildings, airports, dams, sewerage systems, ports, etc.\n\n"
            "A Civil Engineer is essential for the planning/implementation and maintenance of the project. We called him a civil engineer who has a degree Diploma in Civil Engineering in order to acquire engineering knowledge as well as administrative skills. They can establish themselves in the positions of site engineer/manager, design, research, education, etc., at various construction sites, both public and private. They also have the opportunity to work as Deputy Assistant Engineers in various government, semi-government and autonomous organizations. Possibly LGED, PWD, R&H, BR, BBA, MES, EED, WASA, DESCO, DPDC, WDB, BADC, Bangladesh Airlines, Telecom Industry, and various public and private housing and development projects.",
      },
      {
        'title':
        "Diploma In Civil Engineering Technology Course Duration And Assessment",
        'subTitle': "Diploma in Civil Engineering Technology is a 4-year long program consisting of 8 semesters (1 Semester = 6 months). The final and the midterm exams of each semester are conducted under the supervision of the Bangladesh Technical Education Board (BTEB). All the exams question, answer script checking and final results are published by the BTEB. Besides this, each student has to attend the regular class test, quiz test, and semester final project. After successful completion, a student will receive a Diploma Certificate\n\n"
            "The Admission procedure starts after the SSC results. There is mainly one session in a year. Students have to follow the admission announcement which is given by the Bangladesh Technical Education Board Authority. Usually, the admission procedure starts after May (depending on the SSC Result).",
      },
      {
        'title': "Career Prospects",
        'subTitle':
        "Diploma in Civil Engineering is a 4-year long program consisting of 8 semesters (1 Semester = 6 months). The final and the midterm exams of each semester is conducted under the supervision of Bangladesh Technical Education Board (BTEB). All the exams question, answer script checking and final results are published by the BTEB. Besides this, each student has to attend the regular class test, quiz test, and semester final project. After the successful completion, a student will receive a Diploma in civil engineering certificate from BTEB.",
      },
      {
        'title': "Career Path",
        'subTitle':
        "As a qualified civil engineer you can find work in a range of sectors, particularly in the construction sector, on buildings and large structures of all kinds, transport and communications infrastructure. You can also work for employers involved in the production, storage and distribution of electricity, gas and water.",
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
        'title': "ডিপ্লোমা ইন সিভিল ইঞ্জিনিয়ারিং উদ্দেশ্য",
        'subTitle':"সিভিল ইঞ্জিনিয়ারিং প্রোগ্রামে একটি ডিপ্লোমা আপনার ক্যারিয়ারের জন্য একটি ভাল পছন্দ হতে পারে। আধুনিক প্রকৌশল ও প্রযুক্তির একটি গুরুত্বপূর্ণ শাখা হল সিভিল ইঞ্জিনিয়ারিং, যার প্রধান বিষয় হল পরিকল্পনা, নকশা এবং কাঠামোগত সম্পাদন। এর মধ্যে রয়েছে বিভিন্ন চ্যালেঞ্জিং সুবিধা যার মধ্যে রয়েছে পাবলিক ওয়ার্ক ডিজাইন তত্ত্বাবধান এবং রাস্তা, সেতু, টানেল, ভবন, বিমানবন্দর, বাঁধ, পয়ঃনিষ্কাশন ব্যবস্থা, বন্দর ইত্যাদি নির্মাণ কার্যক্রম।\n\n"
            "প্রকল্পের পরিকল্পনা/বাস্তবায়ন এবং রক্ষণাবেক্ষণের জন্য একজন সিভিল ইঞ্জিনিয়ার অপরিহার্য। প্রকৌশল জ্ঞানের পাশাপাশি প্রশাসনিক দক্ষতা অর্জনের জন্য আমরা তাকে একজন সিভিল ইঞ্জিনিয়ার বলে ডাকতাম যিনি সিভিল ইঞ্জিনিয়ারিং-এ ডিপ্লোমা ডিগ্রিধারী। তারা নিজেদেরকে সাইট ইঞ্জিনিয়ার/ম্যানেজার, ডিজাইন, রিসার্চ, শিক্ষা, ইত্যাদি বিভিন্ন নির্মাণ সাইটে, সরকারী এবং বেসরকারী উভয় পদে প্রতিষ্ঠিত করতে পারে। এছাড়াও বিভিন্ন সরকারি, আধা-সরকারি ও স্বায়ত্তশাসিত প্রতিষ্ঠানে উপ-সহকারী প্রকৌশলী হিসেবে কাজ করার সুযোগ রয়েছে তাদের। সম্ভবত LGED, PWD, R&H, BR, BBA, MES, EED, WASA, DESCO, DPDC, WDB, BADC, বাংলাদেশ এয়ারলাইন্স, টেলিকম শিল্প এবং বিভিন্ন সরকারি ও বেসরকারি আবাসন ও উন্নয়ন প্রকল্প।"
      },
      {
        'title': "ডিপ্লোমা ইন সিভিল ইঞ্জিনিয়ারিং টেকনোলজি কোর্সের সময়কাল এবং মূল্যায়ন",
        'subTitle': "ডিপ্লোমা ইন সিভিল ইঞ্জিনিয়ারিং টেকনোলজি একটি 4 বছরের দীর্ঘ প্রোগ্রাম যা 8 সেমিস্টার (1 সেমিস্টার = 6 মাস) নিয়ে গঠিত। প্রতিটি সেমিস্টারের চূড়ান্ত ও মাধ্যমিক পরীক্ষা বাংলাদেশ কারিগরি শিক্ষা বোর্ডের (বিটিইবি) তত্ত্বাবধানে পরিচালিত হয়। সমস্ত পরীক্ষার প্রশ্ন, উত্তর স্ক্রিপ্ট পরীক্ষা এবং চূড়ান্ত ফলাফল BTEB দ্বারা প্রকাশিত হয়। এছাড়াও, প্রতিটি শিক্ষার্থীকে নিয়মিত ক্লাস পরীক্ষা, কুইজ পরীক্ষা এবং সেমিস্টার ফাইনাল প্রকল্পে অংশগ্রহণ করতে হবে। সফলভাবে সমাপ্তির পরে, একজন শিক্ষার্থী একটি ডিপ্লোমা সার্টিফিকেট পাবে।\n\n"
            "এসএসসি ফলাফলের পর ভর্তি প্রক্রিয়া শুরু হয়। বছরে একটি অধিবেশন হয়। শিক্ষার্থীদের বাংলাদেশ কারিগরি শিক্ষা বোর্ড কর্তৃপক্ষ কর্তৃক প্রদত্ত ভর্তি বিজ্ঞপ্তি অনুসরণ করতে হবে। সাধারণত, মে মাসের পরে ভর্তি প্রক্রিয়া শুরু হয় (এসএসসি ফলাফলের উপর নির্ভর করে)।",
      },
      {
        'title': "কর্মজীবনের সাফল্য",
        'subTitle': "ডিপ্লোমা ইন সিভিল ইঞ্জিনিয়ারিং একটি 4 বছরের দীর্ঘ প্রোগ্রাম যা 8 সেমিস্টার (1 সেমিস্টার = 6 মাস) নিয়ে গঠিত। প্রতিটি সেমিস্টারের চূড়ান্ত ও মাধ্যমিক পরীক্ষা বাংলাদেশ কারিগরি শিক্ষা বোর্ডের (বিটিইবি) তত্ত্বাবধানে পরিচালিত হয়। সমস্ত পরীক্ষার প্রশ্ন, উত্তর স্ক্রিপ্ট পরীক্ষা এবং চূড়ান্ত ফলাফল BTEB দ্বারা প্রকাশিত হয়। এছাড়াও, প্রতিটি শিক্ষার্থীকে নিয়মিত ক্লাস পরীক্ষা, কুইজ পরীক্ষা এবং সেমিস্টার ফাইনাল প্রকল্পে অংশগ্রহণ করতে হবে। সফলভাবে সমাপ্তির পর, একজন শিক্ষার্থী বিটিইবি থেকে সিভিল ইঞ্জিনিয়ারিং সার্টিফিকেট ডিপ্লোমা পাবে।",
      },
      {
        'title': "পেশাগত পথ",
        'subTitle': "একজন যোগ্য সিভিল ইঞ্জিনিয়ার হিসেবে আপনি বিভিন্ন সেক্টরে কাজ পেতে পারেন, বিশেষ করে নির্মাণ খাতে, বিল্ডিং এবং সব ধরনের বড় কাঠামো, পরিবহন এবং যোগাযোগ অবকাঠামোতে। এছাড়াও আপনি বিদ্যুৎ, গ্যাস এবং পানি উৎপাদন, সঞ্চয় এবং বিতরণের সাথে জড়িত নিয়োগকারীদের জন্য কাজ করতে পারেন।",
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
        title: const Text('Civil Technology',
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
                Image.asset('assets/images/civil_banner.jpg'),
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
