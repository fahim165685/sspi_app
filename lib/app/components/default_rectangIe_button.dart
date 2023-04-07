import 'package:flutter/material.dart' ;
import 'package:google_fonts/google_fonts.dart';

class DefaultRectangleButton extends StatefulWidget {
    const DefaultRectangleButton({
    Key? key,
    required this.title,
    this.subTitle='',
    this.subTitleOn = false,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final String subTitle;
  final bool subTitleOn;
  final Widget icon;
  final VoidCallback onTap;

  @override
  State<DefaultRectangleButton> createState() => _DefaultRectangleButtonState();
}

class _DefaultRectangleButtonState extends State<DefaultRectangleButton> {
  bool isPressed = true;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerUp: (event) => setState(
            () => isPressed = true,
      ),
      onPointerDown: (event) => setState(() => isPressed = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          clipBehavior: Clip.antiAlias,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color(0xff2b2e33),
              borderRadius: BorderRadius.circular(isPressed == true ? 20 : 25),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: isPressed == true
                      ? const Offset(8, 8)
                      : const Offset(-8, -8),
                  blurRadius: 5,
                ),
                BoxShadow(
                  color: Colors.grey.withOpacity(0.05),
                  offset: isPressed == true
                      ? const Offset(-8, -8)
                      : const Offset(8, 8),
                  blurRadius: 5,
                ),
              ]),
          child: Stack(
            children: [
              Positioned(
                top: -30,
                right: -40,
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Opacity(
                      opacity: isPressed == true ? 0.5 : 1,
                      child: FittedBox(child: widget.icon)),
                ),
              ),
              Positioned(
                  bottom: 20,
                  left: 10,
                  child: Text(
                    widget.title.toUpperCase(),
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: isPressed == true
                            ? const Color(0xFFbcbcbc)
                            : const Color(0xFFeeeeee),
                        fontWeight: FontWeight.w500),
                  )),
              if(widget.subTitleOn==true)
              Positioned(
                  bottom: 5,
                  left: 10,
                  child: Opacity(
                    opacity:isPressed == true
                        ? 0.5:0.6,
                    child: Text(
                      widget.subTitle,
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          color: isPressed == true
                              ? const Color(0xFFbcbcbc)
                              : const Color(0xFFeeeeee),
                          fontWeight: FontWeight.w400),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}