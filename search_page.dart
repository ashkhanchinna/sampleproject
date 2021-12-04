import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/getx/cartlist.dart';
import 'package:flutter_application_1/getx/control.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  final Cr data = Get.put(Cr());
  final Cart cart = Get.put(Cart(), tag: "hi");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product Serach",
          style: TextStyle(color: Colors.black),
        ),
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
          padding: const EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Obx(() {
            return data.loading.isTrue
                ? const Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemCount: data.p.length,
                    itemBuilder: (context, i) {
                      var ds = data.p[i];
                      return ListTile(
                          onTap: () {
                            Get.to(Cartlist());
                          },
                          leading: Container(
                            //color: Colors.green,
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "${data.p[i].image}",
                                    ),
                                    fit: BoxFit.scaleDown)),
                          ),
                          title: Text(
                            "${data.p[i].price}",
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            "${data.p[i].description}",
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.favorite),
                            onPressed: () {
                              cart.cartlist(ds);
                            },
                          ));
                    },
                    separatorBuilder: ((context, i) => const Divider(
                          color: Colors.amber,
                        )),
                  );
          })),
    );
  }
}
