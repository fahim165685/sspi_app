
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SearchFiled extends StatelessWidget {
  const SearchFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: CupertinoSearchTextField(
        backgroundColor: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(50),
        padding: const EdgeInsets.symmetric(vertical: 15),
        keyboardType: TextInputType.text,
        style: const TextStyle(color: kSecondaryColor),
        prefixIcon: const Icon(Icons.search, size: 30),
        suffixIcon: const Icon(Icons.cancel, size: 25),
        suffixInsets: const EdgeInsets.symmetric(horizontal: 8),
        prefixInsets: const EdgeInsets.symmetric(horizontal: 10),
      ),
    );
  }
}