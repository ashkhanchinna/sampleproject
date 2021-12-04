import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/category_widget/category_circle.dart';

class AllCategory extends StatelessWidget {
  const AllCategory({Key? key}) : super(key: key);

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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: SingleChildScrollView(
            //physics: NeverScrollableScrollPhysics(),
            child: Column(
          children: [
            const Text(
              "All Catedories",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3.5,
                  height: MediaQuery.of(context).size.height / 1,
                  //color: Colors.green,
                  child: Column(
                    children: [
                      catCircle(
                        action: () {},
                        icon: "iconimages/sweatshirt.png",
                        color: Colors.orange,
                        name: "Cloths",
                        shadowColor: Colors.orange,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      catCircle(
                        action: () {},
                        color: Colors.lightGreen,
                        icon: "iconimages/c.png",
                        name: "Beauty",
                        shadowColor: Colors.lightBlue,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      catCircle(
                        action: () {},
                        color: Colors.lightBlue,
                        icon: "iconimages/s.png",
                        name: "Shoes",
                        shadowColor: Colors.lightGreen,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      catCircle(
                        action: () {},
                        icon: "iconimages/sweatshirt.png",
                        color: Colors.orange,
                        name: "Cloths",
                        shadowColor: Colors.orange,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      catCircle(
                        action: () {},
                        color: Colors.lightGreen,
                        icon: "iconimages/c.png",
                        name: "Beauty",
                        shadowColor: Colors.lightBlue,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      catCircle(
                        action: () {},
                        color: Colors.lightBlue,
                        icon: "iconimages/s.png",
                        name: "Shoes",
                        shadowColor: Colors.lightGreen,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.amber,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "mens",
                            style: TextStyle(fontSize: 18),
                          ),
                          Card(
                            child: Column(
                              children: [
                                catList(),
                               const Divider(),
                                catList(),
                               const Divider(),
                                catList(),
                               const Divider(),
                                catList(),
                              const  Divider(),
                                catList(),
                             const   Divider(),
                                catList(),
                             const   Divider(),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Womens",
                            style: TextStyle(fontSize: 18),
                          ),
                          Card(
                            child: Column(
                              children: [
                                catList(),
                              const  Divider(),
                                catList(),
                             const   Divider(),
                                catList(),
                              const  Divider(),
                                catList(),
                               const Divider(),
                                catList(),
                               const Divider(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }

  Widget catList() {
    return const SizedBox(
      height: 45,
      child: ListTile(
        title: Text("name of subCat"),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
