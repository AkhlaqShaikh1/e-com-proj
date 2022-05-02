import 'package:e_commerece_app_project/widgets/login_register_page/my_button.dart';
import 'package:flutter/material.dart';

import 'package:e_commerece_app_project/styles/styles.dart';

import '../widgets/login_register_page/custom_text_field.dart';
import '../widgets/login_register_page/welcome_with_gradient.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static String id = "/login";
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        reverse: true,
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          Stack(
            children: [
              Image.asset("assets/images/women_2.jpg"),
              WelcomeWithGradient(tap: () {}),
              Container(
                margin: const EdgeInsets.only(top: 440),
                height: size.height * 0.47,
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
                        style: headerTextStyle,
                      ),
                      Text(
                        "Sign in to your account",
                        style: subtitleTextStyle,
                      ),
                      const SizedBox(height: 10),
                      const CustomTextField(
                          isPassword: false,
                          imgName: "email",
                          title: "Email Address"),
                      const SizedBox(height: 5),
                      const CustomTextField(
                          isPassword: true,
                          imgName: "password",
                          title: "Password"),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          Text(
                            "Remember me",
                            style: subtitleTextStyle.copyWith(
                                fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          Text(
                            "Forgot Password",
                            style: subtitleTextStyle.copyWith(
                              color: const Color(0xff407EC7),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      MyButton(size: size, title: "Login"),
                      const SizedBox(height: 15),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, RegisterPage.id);
                          },
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, RegisterPage.id);
                            },
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
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
