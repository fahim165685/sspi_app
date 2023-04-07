import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:sspi/constants.dart';
import '../../../components/circular_fab_widget.dart';
import '../controllers/about_developed_controller.dart';

class AboutDevelopedView extends StatelessWidget {
  const AboutDevelopedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  {
    final List items = [
      ["Education", "Diploma in computer","Shebapolli science and Polytechnic institute","Session: 18 — 19."],
      ["Certificate", "Skill Development For Mobile Game & Application Project","For 200 hours Mobile apps development flutter (cross - platform)","ICT division , Bangladesh"],
      ["Certificate", "Mobile Apps Development(Flutter)","advance level course for apps development with flutter","BDTask a leading software company, Dhaka"],
    ];
    AboutDevelopedController controller=Get.put(AboutDevelopedController());
    return Obx(() =>  Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_rounded),
          ),
        ),
        floatingActionButton:const CircularFabWidget(),
      body:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: Get.height * 0.5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/developer.png"),
                        fit: BoxFit.cover),
                    color: Color(0xFFf8d3fe),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(210),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                     Positioned(
                      left: 0,
                      right: 0,
                      bottom: -65,
                      child: Container(
                        height: 120,
                        width: Get.width,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                            color: kPrimaryLightColor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 10,
                                  offset: const Offset(0, 10))
                            ],
                            borderRadius: BorderRadius.circular(20)),
                        child:  Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(items[controller.currentItem.value][0]),
                                  Row(
                                  children: List.generate(items.length, (index) => dotIndicator(index: index, controller:controller )),),
                              ],
                            ),
                            const SizedBox(height: 5,),
                            Expanded(
                              child:PageView.builder(
                                onPageChanged: (value) {
                                 controller.selIndex(value: value);
                                  },
                                itemCount: items.length,
                                itemBuilder:(context, index)=>SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 2,),
                                      Text(items[index][1],style: GoogleFonts.roboto(color: kSecondaryColor,fontSize: 15,fontWeight: FontWeight.w500)),
                                      const SizedBox(height: 2,),
                                      FittedBox(child: Text(items[index][2],style: GoogleFonts.roboto(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400))),
                                      const SizedBox(height: 3,),
                                      if(index==0)
                                      Text("Shebapolly Brahmonbaria Bangladesh.",style:GoogleFonts.roboto(color: Colors.grey[400],fontSize: 13,fontWeight: FontWeight.w400) ),
                                      Text(items[index][3],style:GoogleFonts.roboto(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400) ),
                                    ],
                                  ),
                                ),)
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(
                    onTap: (){},
                    image: "",
                    color: const Color(0xFFffebdf),
                    text_1: "Total\nProject Completed",
                    text_2: "5 / Till 2023",),
                  detailsCard(
                    onTap: (){},
                    color: const Color(0xFFc8b7fe),
                    image: "",
                    text_1: "Total\n310 problem sold",
                    text_2: "5/Till 2023",)
                ],
              ),
              const SizedBox(height: 20,),
              customListTile(
                icon: Icons.call,
                onTap: (){},
                title: "Phone",
                subTitle: "0154875563",

              ),

              customListTile(
                icon: Icons.email,
                onTap: (){},
                title: "Email",
                subTitle: "fahim165685@gmail.com",
              ),

              customListTile(
                icon: Icons.gite,
                onTap: (){},
                title: "GitHub",
                subTitle: "fahim165685@gmail.com",
              ),

              customListTile(
                icon: Icons.facebook,
                onTap: (){},
                title: "Facebook",
                subTitle: "fahim165685@gmail.com",
              ),

              customListTile(
                icon: Icons.link,
                onTap: (){},
                title: "Link Dine",
                subTitle: "fahim165685@gmail.com",
              ),



              const SizedBox(height: 20,),
            ],
          ),
        ),

    ));
  }


  Widget customListTile({
    required VoidCallback onTap ,
    Color borderColor = Colors.white,
    required IconData icon,
     Color iconColor = kSecondaryColor,
     Color textColor =kSecondaryColor,
    required String title,
    required String subTitle,

  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        splashColor: kSecondaryColor.withOpacity(0.3),
        hoverColor: Colors.orange,
       borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Container(
                  width: Get.width,
                  height: 70,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.symmetric(horizontal: 17),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(icon,size: 35,color: iconColor),
                      const SizedBox(width: 10,),
                      Container(
                        height: 40,
                        width: 2,
                        decoration: BoxDecoration(
                            color: borderColor,
                          borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(title,style: GoogleFonts.roboto(fontSize: 20,color: textColor,fontWeight: FontWeight.w500)),
                          Text(subTitle,style: GoogleFonts.roboto(
                              color: textColor.withOpacity(0.6,),
                              fontSize: 15,
                              fontWeight:FontWeight.w500  ),),
                        ],
                      )

                    ],
                  ),
                ),
      ),
    );
  }

  Container detailsCard({required Color color ,required String image, required String text_1,required String text_2,required VoidCallback onTap,  }) {
    return Container(
            height: 220,
            padding: const EdgeInsets.all(10),
            width: Get.width*0.45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kPrimaryLightColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 20,
                    offset: const Offset(5, 10))
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Icon
                Container(
                  height: 45,
                  width: 45,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:Icon(Icons.account_tree_outlined),
                ),
                const SizedBox(height: 15,),
                Text(text_1,style: GoogleFonts.roboto(fontSize: 18,color: Colors.grey[400],fontWeight: FontWeight.w500),),
                const SizedBox(height: 12,),
                Text(text_2,style: GoogleFonts.roboto(fontSize: 18,color: Colors.grey[200],fontWeight: FontWeight.w700),),
                const Spacer(),
                InkWell(
                    onTap: onTap,
                    child: const Text("View All",style: TextStyle(decoration: TextDecoration.underline))),
                const SizedBox(height: 10,)
              ],
            ),
          );
  }

  AnimatedContainer dotIndicator({required int index ,required AboutDevelopedController controller,}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width:controller.currentItem.value == index? 20:13,
      height: 5,
      margin: const EdgeInsets.symmetric(horizontal: 1.5),
      decoration: BoxDecoration(
          color:controller.currentItem.value == index ? kSecondaryColor:Colors.white.withOpacity(0.3) ,
          borderRadius: BorderRadius.circular(50)),
    );
  }
}