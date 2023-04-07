import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sspi/app/components/background.dart';
import 'package:sspi/constants.dart';

class AboutSSPI extends StatelessWidget {
  const AboutSSPI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String aboutText="Shebapolly Science and Polytechni Institute is one of the social projects of Shebapolly-Bhadughor established as an effort dedicated to social services by the family of late Mvi. Aliazzam Molla and late Halima Khatoon of village Bhadughor.  It is  an effort of Shebapolly management to provide opportunities for higher technical education for all groups of people for useful skill development and thus produce efficient manpower combined with honesty and morality.  It is officially established on 9th June 2016 when it received the final approval of the Board of Technical Education to run 4-year Engineering Diploma in\na) Computer Technology,\nb) Electrical Technology, and\nc) Civil Technology, programs of the Board.\n\n"
        "Under the ideal and conceptual base of ‘serving humanity is serving religion’, the ultimate goal of education is ‘to gain  knowledge and skill for serving humanity’.  Similarly, Shebapolly Science and Polytechnic Institute is founded on the ideal that ‘service to humanity is at the heart of religion’.   It is thus an academic social enterprise dedicated to social wellbeing. It is established on its own 3-story building (with foundation for 6 stories) located in Shebapolly, Bhadughor, Brahmanbaria. It is fully equipped  with  required number of teachers, classrooms,  laboratories, and  hostel facilities  and   is now ready for admitting  students for the academic session 2017-2018.  Accordingly  announcements for admissions in the three technologies have been already made.\n\n"
        "At the top level it is administered by a 7-member Board of Directors with Professor Dr. Rafiqul Islam Molla as the Chairman.\n";

    return Scaffold(
      appBar: AppBar(
        title: Text("About our Collage".toUpperCase()),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Background(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5
          ),
          child: ListView(
            children: [
              h10(),
              Text("About SSPI",style: GoogleFonts.roboto(fontSize: 30,color: Colors.white),),
              h10(),
              Text("Introduction to\nShebapolly Science and Polytechnic Institute ",style: GoogleFonts.roboto(fontSize: 17,color: kSecondaryColor,fontWeight: FontWeight.w500),),
              h10(),
              SelectableText(aboutText,textAlign: TextAlign.justify,style: GoogleFonts.roboto(fontSize: 18,color: kTextColor,fontWeight: FontWeight.w500)),
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
