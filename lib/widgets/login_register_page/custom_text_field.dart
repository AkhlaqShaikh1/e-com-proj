import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../styles/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.isPassword,
    required this.imgName,
    required this.title,
  }) : super(key: key);

  final bool isPassword;
  final String imgName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
                margin: const EdgeInsets.only(top: 5),
                child: imgName == "email"
                    ? SvgPicture.asset("assets/icons/$imgName.svg", height: 15)
                    : Icon(Icons.lock_outline_sharp, color: subtitleColor)),
          ),
          Center(
            child: Container(
              width: 100,
              margin: const EdgeInsets.only(left: 21),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: title,
                  hintStyle: TextStyle(
                    fontFamily: primaryFontFamily,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          isPassword
              ? SizedBox(
                  height: 60,
                  child: Icon(Icons.remove_red_eye, color: subtitleColor),
                )
              : const SizedBox(height: 60),
        ],
      ),
    );
  }
}