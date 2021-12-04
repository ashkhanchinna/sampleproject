import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth_pages/authpage_widgets/auth_butons.dart';
import 'package:flutter_application_1/pages/auth_pages/authpage_widgets/auth_textfield.dart';

class ForgotPasswordPge extends StatelessWidget {
   ForgotPasswordPge({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          child: Text(
            "Enter your Email Adress you used to create\nyour Account, We will Email you a link to\nrest your password",
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Card(
          child: Column(
            children:  [
              TextFieldWidget(label: "Email", icon: Icons.email, ctr:controller ,),
            ],
          ),
        ),
        AuthButtonWidget(name: "Send Email", action: () {
          
        })
      ],
    );
  }
}
