import 'package:flutter/material.dart';
import 'package:flutter_application_1/getx/auth_controller/auth_control.dart';
import 'package:flutter_application_1/getx/formvalidation/login_form.dart';
import 'package:flutter_application_1/pages/auth_pages/authpage_widgets/auth_butons.dart';
import 'package:flutter_application_1/pages/auth_pages/authpage_widgets/auth_textfield.dart';
import 'package:flutter_application_1/pages/mainpage.dart';
import 'package:get/route_manager.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final SignupController signupController = SignupController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            children: [
              TextFieldWidget(
                label: "Email",
                icon: Icons.email,
                ctr: signupController.emailController,
              ),
              TextFieldWidget(
                label: "UserName",
                icon: Icons.person,
                ctr: signupController.nameController,
              ),
              TextFieldWidget(
                label: "Password",
                icon: Icons.lock,
                ctr: signupController.passwordController,
              ),
            ],
          ),
        ),
        AuthButtonWidget(
            name: "Sign Up",
            action: () {
              Get.to(() => const MianPage());
              // signupController.signup();
            }),
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: "By creatign Acoount, You agree to our\n",
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: "terms of services",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                ),
              ),
              TextSpan(text: " and ", style: TextStyle(color: Colors.black)),
              TextSpan(
                text: "privacy policy",
                style: TextStyle(color: Colors.red, fontSize: 14),
              )
            ],
          ),
        ),
      ],
    );
  }
}
