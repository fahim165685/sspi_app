import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({
    super.key,
    required this.value,
    this.onValue = ' ',
    this.offValue = ' ',
    this.size=50,
    this.activeColor= kSecondaryColor,
    this.dativeColor= Colors.white,
    required this.onChange,
  });
  final bool value;
  final String onValue, offValue;
  final VoidCallback onChange;
  final double size;
  final Color activeColor,dativeColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChange,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: size,
        width: size*2,
        decoration: BoxDecoration(
            color: value == true
                ? activeColor.withOpacity(0.5)
                : dativeColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(50)),
        child: AnimatedAlign(
          curve:Curves.easeInOutBack ,
          duration: const Duration(milliseconds: 300),
          //heightFactor: 2,
          alignment:
          value == true ? Alignment.centerRight : Alignment.centerLeft,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: EdgeInsets.all((size>=45)? 10:5),
            width: size,
            height: size,
            decoration: BoxDecoration(
                color: value == true ? activeColor : dativeColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: value == true
                          ? activeColor.withOpacity(0.6)
                          : dativeColor.withOpacity(0.6),
                      blurRadius: 10,
                      offset: value == true ? const Offset(-5, 0) : const Offset(5, 0))
                ]),
            child: Center(
              child: FittedBox(
                  child: Text(
                    value == true ? onValue : offValue,
                    style: TextStyle(
                        color: value == true ? Colors.grey[200] : Colors.black54,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}