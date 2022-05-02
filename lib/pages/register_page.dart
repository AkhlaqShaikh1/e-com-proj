import 'package:e_commerece_app_project/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../styles/styles.dart';
import '../widgets/login_register_page/custom_text_field.dart';
import '../widgets/login_register_page/my_button.dart';
import '../widgets/login_register_page/welcome_with_gradient.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  static String id = "/register";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              Image.asset("assets/images/women_1.jpg"),
              WelcomeWithGradient(
                tap: tap,
              ),
              Container(
                margin: const EdgeInsets.only(top: 415),
                height: size.height * 0.5,
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
                      Text("Create Account", style: headerTextStyle),
                      Text("Quickly create account", style: subtitleTextStyle),
                      const SizedBox(height: 10),
                      const CustomTextField(
                        isPassword: false,
                        imgName: "email",
                        title: "Email Address",
                      ),
                      const SizedBox(height: 5),
                      const CustomTextField(
                        isPassword: false,
                        imgName: "phone",
                        title: "Phone number",
                      ),
                      const SizedBox(height: 5),
                      const CustomTextField(
                        isPassword: true,
                        imgName: "password",
                        title: "Password",
                      ),
                      const SizedBox(height: 10),
                      MyButton(size: size, title: "Register"),
                      const SizedBox(height: 15),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, LoginPage.id);
                          },
                          child: RichText(
                            text: TextSpan(
                              text: "Already have an account?",
                              children: [
                                TextSpan(
                                  text: " Login",
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

  tap() {
    Navigator.pop(context);
  }
}
