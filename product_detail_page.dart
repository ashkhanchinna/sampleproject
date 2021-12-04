import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth_pages/authpage_widgets/auth_butons.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/product_detail_components/detail_tab.dart';
import 'package:flutter_application_1/pages/product_detail_components/product.dart';
import 'package:flutter_application_1/pages/product_detail_components/review_tab.dart';
import 'package:get/route_manager.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

List images = [
  "iconimages/shoe.png",
  "iconimages/shoe.png",
  "iconimages/shoe.png",
];

class _ProductDetailState extends State<ProductDetail>
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.orange,
            )),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 18),
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    const Text("Anglo Boot"),
                    const Text(
                      "\$69.09",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15, bottom: 15),
                      //color: Colors.greenAccent,
                      height: 230,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircleAvatar(
                                radius: 4,
                              ),
                              SizedBox(width: 1.5),
                              CircleAvatar(
                                radius: 4,
                              ),
                              SizedBox(width: 1.5),
                              CircleAvatar(
                                radius: 4,
                              )
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    width: 300,
                                    height: 190,
                                    child: Image.asset("iconimages/shoe.png",
                                        fit: BoxFit.contain)),
                                SizedBox(
                                    width: 300,
                                    height: 190,
                                    child: Image.asset("iconimages/shoe.png",
                                        fit: BoxFit.contain)),
                                SizedBox(
                                    width: 300,
                                    height: 190,
                                    child: Image.asset("iconimages/shoe.png",
                                        fit: BoxFit.contain))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        //color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      height: 60,
                      child: TabBar(
                        labelColor: Colors.orange,
                        unselectedLabelColor: Colors.grey,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: const BubbleTabIndicator(
                            indicatorHeight: 40.0,
                            indicatorColor: Colors.white,
                            tabBarIndicatorSize: TabBarIndicatorSize.tab,
                            // Other flags
                            indicatorRadius: 50,
                            padding: EdgeInsets.all(25)),
                        controller: tabController,
                        tabs: const [
                          Tab(
                            text: "Product",
                          ),
                          Tab(text: "Details"),
                          Tab(text: "Review")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      //height: 400,
                      child: TabBarView(
                        controller: tabController,
                        children: const [
                          Product(),
                          Details(),
                          ReviewTab(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.grey.shade200,
                height: 60,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: AuthButtonWidget(
                        textcolour: Colors.black,
                        padding: 27,
                        align: false,
                        name: "Share",
                        action: () {},
                        bgcolor: Colors.white,
                        icon: Icons.arrow_upward,
                        textsize: 18,
                        iconbg: Colors.grey,
                        iconcolor: Colors.white,
                        margin: 0,
                        marginb: 0,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: AuthButtonWidget(
                        name: "Add to cart",
                        align: false,
                        textcolour: Colors.white,
                        textsize: 15,
                        action: () {
                          Get.to(() => const CartPage());
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
            )
          ],
        ),
      ),
    );
  }
}
