import 'package:e_commerece_app_project/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isPassword = true;

    return Scaffold(
      // backgroundColor: Colors.black,
      body: SingleChildScrollView(
        reverse: true,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/women_2.jpg"),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: appBarColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17.0, vertical: 40),
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
                ),
                Container(
                  margin: const EdgeInsets.only(top: 440),
                  height: size.height * 0.50,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome back !",
                          style: TextStyle(
                            fontFamily: primaryFontFamily,
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            letterSpacing: 0.13,
                          ),
                        ),
                        Text(
                          "Sign in to your account",
                          style: TextStyle(
                            fontFamily: primaryFontFamily,
                            fontWeight: FontWeight.w400,
                            color: subtitleColor,
                            fontSize: 15,
                            letterSpacing: 0.13,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 60,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
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
                                  child: SvgPicture.asset(
                                      "assets/icons/email.svg",
                                      height: 15),
                                ),
                              ),
                              Center(
                                child: Container(
                                  width: 100,
                                  margin: const EdgeInsets.only(left: 21),
                                  child: TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email Address",
                                      hintStyle: TextStyle(
                                        fontFamily: primaryFontFamily,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
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
                                  child: SvgPicture.asset(
                                      "assets/icons/email.svg",
                                      height: 15),
                                ),
                              ),
                              Center(
                                child: Container(
                                  width: 100,
                                  margin: const EdgeInsets.only(left: 21),
                                  child: TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
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
                                      child: Icon(Icons.remove_red_eye,
                                          color: subtitleColor),
                                    )
                                  : const SizedBox(height: 60),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                            Text(
                              "Remember me",
                              style: TextStyle(
                                color: subtitleColor,
                                fontSize: 15,
                                letterSpacing: 0.15,
                                fontWeight: FontWeight.w500,
                                fontFamily: primaryFontFamily,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "Forgot Password",
                              style: TextStyle(
                                color: const Color(0xff407EC7),
                                fontSize: 15,
                                letterSpacing: 0.15,
                                fontWeight: FontWeight.w700,
                                fontFamily: primaryFontFamily,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: size.width,
                          height: 60,
                          decoration: BoxDecoration(
                              gradient:
                                  LinearGradient(colors: primaryButtonColor),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xff6CC51D).withOpacity(0.25),
                                  offset: const Offset(0, 9),
                                  blurRadius: 9,
                                ),
                              ]),
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                "Login",
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
                        ),
                        const SizedBox(height: 15),
                        Center(
                          child: RichText(
                            text: TextSpan(
                              text: "Don't have an account?",
                              children: [
                                TextSpan(
                                  text: " Sign up",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: primaryFontFamily,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                              style: TextStyle(
                                color: subtitleColor,
                                fontFamily: primaryFontFamily,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
