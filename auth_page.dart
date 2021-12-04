import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth_pages/forgot_password_page.dart';
import 'package:flutter_application_1/pages/auth_pages/signin_page.dart';
import 'package:flutter_application_1/pages/auth_pages/signup_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),
                SizedBox(
                  height: 80,
                  child: TabBar(
                    unselectedLabelColor: Colors.grey,
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.black,
                    controller: tabController,
                    tabs: const [
                      Tab(
                        text: "Sign Up",
                      ),
                      Tab(
                        text: "Sign In",
                      ),
                      Tab(
                          child: Text(
                        "Forgot\nPassword",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.center,
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 550,
                  child: TabBarView(
                    controller: tabController,
                    children:  [
                     const SignUpPage(),
                     const SignInPage(),
                      ForgotPasswordPge(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
