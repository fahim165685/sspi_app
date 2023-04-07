import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sspi/constants.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: kPrimaryLightColor,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
                width: double.infinity,
                height: Get.height * 0.8,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/Academic.svg",
                            width: 160,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Welcome\nto".toUpperCase(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            "Shebapolly".toUpperCase(),
                            style: GoogleFonts.roboto(
                              color: kSecondaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        left: 0,
                        right: 0,
                        bottom: 50,
                        child: Text(
                          "Check your result, class routine, exam routine and\nexam result!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.robotoSlab(
                            color: Colors.grey.shade700,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                          ),
                        )),
                    Positioned(
                      bottom: -22,
                      left: 100,
                      right: 100,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.offNamed('/nev-bar');
                          },
                          style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(
                                  kSecondaryColor),
                              fixedSize: const MaterialStatePropertyAll(
                                Size(200, 50),
                              ),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50)))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Get start".toUpperCase(),
                                  style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 20,
                              )
                            ],
                          )),
                    ),
                  ],
                )),
          ),
          Positioned(
              bottom:-6,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                const Text("Developed by"),
                TextButton(onPressed: (){
                  Get.toNamed('/about-developed');
                }, child:
                const Text(" HM Fahim",style: TextStyle(color:kSecondaryColor ))),
              ],))
        ],
      ),
    ));
  }
}
