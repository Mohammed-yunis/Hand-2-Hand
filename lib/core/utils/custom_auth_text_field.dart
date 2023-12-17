import 'package:flutter/material.dart';
import 'package:hand2hand/core/utils/media_query.dart';

import '../../constants.dart';

class CustomAuthTextField extends StatelessWidget {
  const CustomAuthTextField({
    super.key,
    required this.text,
    this.icon,
  });

  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: text,
        hintStyle: const TextStyle(fontWeight: FontWeight.w700),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SizeApp(context).width*0.05),
            borderSide: BorderSide.none),
        fillColor: mainWhite,
        filled: true,
        prefixIcon: icon != null ? Icon(icon, color: iconsColor) : null,
      ),
    );
  }
}
