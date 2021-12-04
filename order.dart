import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth_pages/authpage_widgets/auth_butons.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 60,
                  child: Icon(
                    Icons.check,
                    color: Colors.orange,
                    size: 100,
                  )),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Order Placed!",
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 10),
            const Text(
                "Your Order was placed Succesfully.\nFor more details,Check all my Orders\nPage under profile tab"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: AuthButtonWidget(name: "My Orders", action: () {}),
            )
          ],
        )));
  }
}
