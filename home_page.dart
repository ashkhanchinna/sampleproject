import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/all_category.dart';
import 'package:flutter_application_1/pages/category/category_widget/category_circle.dart';
import 'package:flutter_application_1/pages/product_detail_page.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            const Text(
              "Categories",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              height: 100,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      catCircle(
                        action: () {},
                        icon: "iconimages/sweatshirt.png",
                        color: Colors.orange,
                        name: "Cloths",
                        shadowColor: Colors.orange,
                      ),
                      catCircle(
                        action: () {},
                        color: Colors.lightGreen,
                        icon: "iconimages/c.png",
                        name: "Beauty",
                        shadowColor: Colors.lightBlue,
                      ),
                      catCircle(
                        action: () {},
                        color: Colors.lightBlue,
                        icon: "iconimages/s.png",
                        name: "Shoes",
                        shadowColor: Colors.lightGreen,
                      ),
                      catCircle(
                        action: () {
                          Get.to(() => const AllCategory());
                        },
                        icons: true,
                        color: Colors.white,
                        icon: "iconimages/beauty.png",
                        name: "See All",
                        shadowColor: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Text(
              "Latest",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 230,
              width: double.infinity,
              //color: Colors.green,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8, top: 10),
                        height: 200,
                        width: 310,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage("iconimages/ban1.jpg"),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.4,
                              blurRadius: 3,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 8, top: 10),
                        height: 200,
                        width: 310,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage("iconimages/ban1.jpg"),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.4,
                              blurRadius: 3,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              //color: Colors.green,
              height: 150,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProductDetail()));
                      },
                      child: product(
                          name: "Angle boot",
                          price: "\$69.09",
                          image: "iconimages/shoe.png"),
                    ),
                    product(
                        name: "watch",
                        price: "\$67.09",
                        image: "iconimages/watch.png"),
                    product(
                        name: "bag",
                        price: "\$90.65",
                        image: "iconimages/bag.png"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



Widget product(
    {required String image, required String name, required String price}) {
  return SizedBox(
      height: 150,
      width: 110,
      child: Card(
        elevation: 5,
        shadowColor: Colors.grey.withOpacity(0.4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              fit: BoxFit.scaleDown,
              image: AssetImage(
                image,
              ),
            ),
            Text(name),
            Text(
              price,
              textAlign: TextAlign.left,
              style: const TextStyle(fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ));
}
