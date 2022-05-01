import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../styles/styles.dart';

class WelcomeWithGradient extends StatelessWidget {
  const WelcomeWithGradient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: appBarColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 40),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/back_button.svg",
              color: Colors.white,
            ),
            const SizedBox(width: 140),
            Text(
              "Welcome",
              style: TextStyle(
                fontFamily: primaryFontFamily,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
