import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';


const double buttonSize = 60;
class CircularFabWidget extends StatefulWidget {
  const CircularFabWidget({Key? key}) : super(key: key);

  @override
  State<CircularFabWidget> createState() => _CircularFabWidgetState();
}

class _CircularFabWidgetState extends State<CircularFabWidget> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 500) ,
        vsync: this

    );
  }
  @override
  void dispose() {
   controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Flow(
    delegate: FlowMenuDelegate(controller: controller),
          children:<IconData> [
            Icons.mail,
            Icons.call,
            Icons.notifications,
            Icons.sms,
            Icons.menu
    ].map<Widget>(buildFAB).toList(),
  );

  Widget buildFAB(IconData icon)=> SizedBox(
    height: buttonSize,
    width: buttonSize,
    child: FloatingActionButton(
      elevation: 0,

        splashColor: Colors.yellow,
        backgroundColor: kSecondaryColor,
        child: Icon(icon,color: Colors.white,size: 30,),
        onPressed: (){
        Get.snackbar("warning", "Now Information Found",snackPosition: SnackPosition.BOTTOM );
        if(controller.status == AnimationStatus.completed){
          controller.reverse();
        }else{
          controller.forward();
        }
        }
    ),
  );
}

class FlowMenuDelegate extends FlowDelegate {
final Animation<double> controller;
const FlowMenuDelegate({required this.controller}):super(repaint:controller );

  @override
  void paintChildren(FlowPaintingContext context) {

    final size= context.size;
    final xStart= size.width- buttonSize;
    final yStart= size.height-buttonSize;

    final n = context.childCount;

    for (int i = 0; i < n; i++){
      final isLastItem = i == context.childCount -1;
      setValue(value)=> isLastItem ? 0.0 : value;

      final radius = 180*controller.value;


      final theta = i* pi * 0.5 / ( n-2 );
      final x =xStart- setValue( radius * cos(theta));
      final y =yStart- setValue( radius * sin(theta)) ;

    context.paintChild(
        i,
        transform: Matrix4.identity()
          ..translate(x, y, 0)
          ..translate(buttonSize/2, buttonSize/2)
          ..rotateZ(isLastItem?0.0: 180*(1-controller.value)*pi/180)
          ..scale(isLastItem ?1.0: max(controller.value, 0.8))
          ..translate(-buttonSize /2, -buttonSize/2),
    );
  }
  }
  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate)=>false;
}
