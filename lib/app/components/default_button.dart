import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sspi/constants.dart';

class DefaultButton extends StatefulWidget {
  const DefaultButton({
    super.key,
    required this.onTap,
    required this.text,
    this.enableIcon = false,
    this.icon,
    this.height= 70,
    this.width= double.infinity,
  });
  final VoidCallback onTap;
  final String text;
  final bool enableIcon;
  final Widget? icon;
  final double height,width;

  @override
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  bool isPressed = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Listener(
        onPointerUp: (event) => setState(() => isPressed = false),
        onPointerDown: (event) => setState(() => isPressed = true),
        child: Material(
          color: const Color(0xff2b2e33),
          elevation: 10,
          borderRadius: BorderRadius.circular(15),
          type: MaterialType.button,
          shadowColor: kPrimaryLightColor.withOpacity(0.5),
          child: InkWell(
            onTap: widget.onTap,
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              height: widget.height,
              width: widget.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    height: isPressed == false ? widget.height/2 : (widget.height/2)-10,
                    width: 6,
                    decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(50)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      flex: 7,
                      child: Text(widget.text,style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white70),)),
                  if(widget.enableIcon == true)
                  SizedBox(
                      height: widget.height-30,
                      width: widget.height-30,
                      child:FittedBox(child: widget.icon) ,
                    ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
