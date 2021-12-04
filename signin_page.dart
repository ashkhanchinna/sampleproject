import 'package:flutter/material.dart';
import 'package:flutter_application_1/getx/firbase/fb_controller.dart';
import 'package:flutter_application_1/pages/auth_pages/authpage_widgets/auth_butons.dart';
import 'package:flutter_application_1/pages/auth_pages/authpage_widgets/auth_textfield.dart';
import 'package:flutter_application_1/pages/mainpage.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final FbControll controller = Get.put(FbControll());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            children: [
              TextFieldWidget(
                  label: "UserName",
                  icon: Icons.person,
                  ctr: controller.fbemail),
              TextFieldWidget(
                label: "Password",
                icon: Icons.lock,
                ctr: controller.fbpass,
              )
            ],
          ),
        ),
        AuthButtonWidget(
            name: "Sign In",
            action: () {
              Get.to(() => const MianPage());
              //controller.signin();
            }),
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
              text: "Don't have a Account? Swipe Left to\n",
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: " Create an Account ",
                  style: TextStyle(color: Colors.red, fontSize: 14),
                )
              ]),
        ),
      ],
    );
  }
}
