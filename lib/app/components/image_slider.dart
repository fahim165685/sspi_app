import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sspi/constants.dart';

class ImageSliderController extends GetxController{
  var activeIndex = 0.obs;
  void onPageChanged(int index){
    activeIndex.value = index;
  }
}

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    super.key,
  });
  @override
  Widget build(BuildContext context) {

    ImageSliderController controller =Get.put(ImageSliderController());
    final List item = [
      "assets/images/gallery_3.jpg",
      "assets/images/gallery_4.jpg",
      "assets/images/gallery_5.jpg",
      "assets/images/cmt_labe.jpeg",
    ];
    return Obx(() => Column(
      children: [
        CarouselSlider.builder(
          itemCount: item.length,
          itemBuilder: (context, index, realIndex) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.green,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(item[index]),fit: BoxFit.cover)
              ),
             /* child: Center(
                  child: Text(
                    item[index],
                    style: const TextStyle(fontSize: 200),
                  ))*/
          ),
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 16 / 9,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 2),
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            //
            onPageChanged: (index, reason) {
              controller.onPageChanged(index);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: buildIndicator(item,controller),
        )
      ],
    ));
  }

  Widget buildIndicator(List item, ImageSliderController controller) => AnimatedSmoothIndicator(
    activeIndex:controller.activeIndex.value,
    count: item.length,
    effect:  const ExpandingDotsEffect(
        dotWidth: 10,
        dotHeight: 10,
        activeDotColor: kSecondaryColor,
        dotColor: Colors.blueGrey),
  );
}