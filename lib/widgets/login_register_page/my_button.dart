import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 60,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: primaryButtonColor),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff6CC51D).withOpacity(0.25),
              offset: const Offset(0, 9),
              blurRadius: 9,
            ),
          ]),
      child: GestureDetector(
        onTap: () {},
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: primaryFontFamily,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        // style: ElevatedButtonTheme.of(context).style!.copyWith(
      ),
    );
  }
}