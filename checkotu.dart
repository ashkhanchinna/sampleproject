import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth_pages/authpage_widgets/auth_butons.dart';
import 'package:flutter_application_1/pages/order.dart';
import 'package:get/route_manager.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 35, left: 10, right: 10),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      "CheckOut",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 145,
                      child: ListTile(
                        title: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text("shipping Address"),
                                Text(
                                  "Jhone doe",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                      "no 123 , sub street\nMain Street,\nCity name,province,\ncountry"),
                                ),
                              ],
                            ),
                            const Icon(Icons.arrow_forward)
                          ],
                        ),
                      ),
                    ),
                    const Divider(),
                    const Text("Payment Methos"),
                    const ListTile(
                        leading: CircleAvatar(
                          radius: 10,
                        ),
                        title: Text(
                          "MASTER CARD ENDING **00",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w700),
                        ),
                        trailing: Icon(Icons.arrow_forward)),
                    const Divider(),
                    const Text("Items"),
                    list(
                      "iconimages/shoe.png",
                    ),
                    const Divider(),
                    list("iconimages/watch.png"),
                    const Divider(),
                    list("iconimages/shoe.png"),
                    const Divider(),
                    const SizedBox(
                      height: 100,
                    ),
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
                        margin: const EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width / 3,
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
                          name: "PLACEORDER",
                          align: false,
                          textcolour: Colors.white,
                          textsize: 15,
                          action: () {
                            Get.to(const Order());
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
        ),
      ),
    );
  }

  Widget list(String text) {
    return SizedBox(
      height: 100,
      child: ListTile(
        horizontalTitleGap: -50,
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
            const Text(
              "size of the product",
              style: TextStyle(fontSize: 14),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 80.0),
                  child: Text(
                    "\$49.09",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
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
                          child: Icon(Icons.minimize,
                              size: 15, color: Colors.white),
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
            ),
          ],
        ),
      ),
    );
  }
}
