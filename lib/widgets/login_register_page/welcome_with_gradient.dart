import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../styles/styles.dart';

class WelcomeWithGradient extends StatelessWidget {
  const WelcomeWithGradient({
    Key? key,
    required this.tap,
  }) : super(key: key);
  final VoidCallback? tap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: appBarColor,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 40),
        child: Row(
          children: [
            GestureDetector(
              onTap: tap,
              child: Container(
                padding: const EdgeInsets.only(top: 15),
                child: SvgPicture.asset(
                  "assets/icons/back_button.svg",
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 130),
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontFamily: primaryFontFamily,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
