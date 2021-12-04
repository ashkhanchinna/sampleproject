import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth_pages/authpage_widgets/auth_butons.dart';
import 'package:flutter_application_1/pages/checkotu.dart';
import 'package:get/route_manager.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body:  SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Cart",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w800),
                      ),
                    ),
                    my(
                      "iconimages/shoe.png",
                    ),
                const    Divider(),
                    my(
                      "iconimages/watch.png",
                    ),
                   const Divider(),
                    my(
                      "iconimages/bag.png",
                    ),
                  const  Divider(),
                    my(
                      "iconimages/shoe.png",
                    ),
                   const Divider(),
                    my(
                      "iconimages/shoe.png",
                    ),
                    const Divider(),
                   const SizedBox(height: 110),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Colors.grey.shade200,
                  height: 90,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text("Total"),
                            Text(
                              "\$89.09",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text("Free Shipping")
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: AuthButtonWidget(
                          name: "CHECKOUT",
                          align: false,
                          textcolour: Colors.white,
                          textsize: 15,
                          action: () {
                            Get.to(const CheckOut());
                          },
                          bgcolor: Colors.orange,
                          icon: Icons.arrow_forward_ios,
                          iconbg: Colors.white,
                          iconcolor: Colors.orange,
                          padding: 8,
                          margin: 0,
                          marginb: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget my(String text) {
    return SizedBox(
      height: 100,
      child: ListTile(
          horizontalTitleGap: -100,
          leading: SizedBox(
            height: 150,
            width: 100,
            child: Image.asset(
              text,
              fit: BoxFit.contain,
            ),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("name of the product"),
              const Padding(
                padding: EdgeInsets.only(left: 75),
                child: Text(
                  "size of the product with descriptoin",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              const Text(
                "\$49.09",
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child:
                            Icon(Icons.minimize, size: 15, color: Colors.white),
                      ),
                      radius: 10,
                    ),
                    Text("1"),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Icon(Icons.add, size: 15, color: Colors.white),
                      ),
                      radius: 10,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
