import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sspi/app/components/background.dart';



class PhotoGallery extends StatelessWidget {
  const PhotoGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> imageItem = [
      {
        'text': 'About Shebapolly',
        'image': 'assets/images/gallery_3.jpg',
        'isFav': false,
      },
      {
        'text': 'About Shebapolly',
        'image': 'assets/images/gallery_4.jpg',
        'isFav': false,
      },
      {
        'text': 'About Shebapolly',
        'image': 'assets/images/gallery_5.jpg',
        'isFav': false,
      },
      {
        'text': 'About Shebapolly',
        'image': 'assets/images/gallery_7.jpg',
        'isFav': false,
      },
      {
        'text': 'About Shebapolly',
        'image': 'assets/images/cmt_labe.jpeg',
        'isFav': false,
      },
      {
        'text': 'About Shebapolly',
        'image': 'assets/images/gallery_6.jpg',
        'isFav': false,
      },
      {
        'text': 'About Shebapolly',
        'image': 'assets/images/gallery_2.jpg',
        'isFav': false,
      },
      {
        'text': 'About Shebapolly',
        'image': 'assets/images/gallery_1.jpg',
        'isFav': false,
      },

    ];

    return   Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery".toUpperCase()),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Background(
          child: GridView.builder(
            itemCount: imageItem.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 4 / 3),
              itemBuilder: (context, index) =>  imageCard(
          image: imageItem[index]['image'],
          title: imageItem[index]['text'],
          onTap: (){}
        )),
      ),
    );
  }

  Widget imageCard({required String image,title, required VoidCallback onTap ,}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: const EdgeInsets.all(10),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            image:  DecorationImage(image:AssetImage(image),repeat: ImageRepeat.repeat, ),
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.white.withOpacity(0.2),
                    blurRadius: 5,
                    offset: const Offset(5, 5))
              ]),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.grey.withOpacity(0.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )),
                    /*  GestureDetector(
                        onTap: () => controller.favorite(),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          width: 75,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(controller.isFavorite.value==true? 0.2:0.4),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(50),
                              )),
                          child:  Center(
                            child:controller.isFavorite.value==true?const Icon(Icons.favorite_border,):const Icon(Icons.favorite,color: Colors.red,),
                          ),
                        ),
                      ),*/

                      // Icon(Icons.favorite)
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
    );
  }
}
