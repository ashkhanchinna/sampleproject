import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/getx/cases/case_control.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  final CaseControll controll = Get.put(CaseControll());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.chat_bubble,
              color: Colors.black,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.black,
              )),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.lightBlue.shade100,
                            borderRadius: BorderRadius.circular(50)),
                        height: 100,
                        width: 100,
                        child: const Icon(
                          Icons.person,
                          size: 75,
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        const Text(
                          "Name ",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text("12345@gmail.com"),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 24,
                          width: 120,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(25)),
                          child: const Center(child: Text("Edit Profile")),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
              Card(
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: Column(children: [
                    se(Icons.person, "my profile"),
                    const Divider(),
                    se(Icons.border_outer_rounded, "Pending payments"),
                    const Divider(),
                    se(Icons.person, "my shipping"),
                    const Divider(),
                    se(Icons.border_outer_rounded, "Pending orders"),
                    const Divider(),
                    se(Icons.person, " title"),
                    const Divider()
                  ])),
              const SizedBox(height: 15),
              Card(
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: Column(children: [
                    se(Icons.person, "titele"),
                    se(Icons.border_outer_rounded, "Pending payments"),
                    se(Icons.person, "mtitle"),
                    se(Icons.border_outer_rounded, "Pending payments"),
                    se(Icons.person, "my profile"),
                  ])),
            ],
          ),
        ),
      ),
    );
  }

  Widget se(IconData icon, String name) {
    return SizedBox(
      height: 40,
      child: ListTile(
          minVerticalPadding: 0,
          leading: Icon(icon),
          title: Text(name),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 18,
          )),
    );
  }
}
