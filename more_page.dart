import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const Text(
              "More",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 15),
            Card(
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (c, i) => list(),
                    separatorBuilder: (c, i) => const Divider(),
                    itemCount: 5)),
            const SizedBox(height: 20),
            Card(
                child: Column(
              children: [
                list(row: true, name: "USD"),
                const Divider(),
                list(row: true, name: "English"),
              ],
            )),
            const SizedBox(
              height: 10,
            ),
            const Text("Log Out",
                style: TextStyle(
                  color: Colors.red,
                )),
          ],
        )),
      ),
    );
  }

  Widget list({
    bool row = false,
    String? name = "",
  }) {
    return SizedBox(
      height: 50,
      child: ListTile(
        leading: const Icon(Icons.credit_card),
        title: const Text("title of the list"),
        trailing: row
            ? SizedBox(
                // color: Colors.amber,
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text(name!), const Icon(Icons.arrow_forward_ios)],
                ),
              )
            : const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
