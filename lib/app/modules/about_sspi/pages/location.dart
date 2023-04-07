import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  bool isPress = false;

  Future<void> launchUri(url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalNonBrowserApplication,
    )) {
      throw 'Could not launch $uri';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location".toUpperCase(),style: const TextStyle(color: Colors.black)),
        backgroundColor: Colors.grey[300],
        elevation: 2,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black,),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: Listener(
        onPointerUp:(event) => setState(() {
          isPress=false;
        }),
        onPointerDown: (event) => setState(() {
          isPress=true;
        }),
        child: Center(
          child: GestureDetector(
            //
            onTap: () =>launchUri("https://www.google.com/maps/place/23%C2%B056'49.0%22N+91%C2%B006'59.7%22E/@23.9477823,91.1174332,17.86z/data=!4m4!3m3!8m2!3d23.946951!4d91.116572"),
            child: AnimatedContainer(
              duration: const Duration( milliseconds: 200),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color:Colors.grey[300],
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500]!,
                      offset:isPress==true? const Offset(4, 4):const Offset(-4, -4),
                      blurRadius: 15,
                    ),
                    BoxShadow(
                        color: Colors.white,
                        offset:isPress==true? const Offset(-4, -4):const Offset(4, 4),
                        blurRadius: 15,
                        spreadRadius: 1

                    )
                  ]
              ),
              child:  Icon(Icons.location_on_outlined,size: 200,color: Colors.black.withOpacity(isPress==false? 1:0.7)),
            ),
          ),
        ),
      ),
    );
  }
}
