import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Background extends StatelessWidget {
  const Background({
    super.key, required this.child,
    this.bgIcon=true,
  });
  final Widget child;
  final bool bgIcon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if(bgIcon == true)
          Positioned(
              bottom: 20,
              right: 0,
              child: Opacity(
                  opacity: 0.3,
                  child: SvgPicture.asset("assets/icons/BG_Line.svg"))),
        child
      ],
    );
  }
}