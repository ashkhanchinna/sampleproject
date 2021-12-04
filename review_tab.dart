import 'package:flutter/material.dart';

class ReviewTab extends StatelessWidget {
  const ReviewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        tileRiew(),
        const Divider(),
        tileRiew(),
        const Divider(),
      ],
    );
  }

  Widget tileRiew() {
    return ListTile(
      leading: const CircleAvatar(
        child: Text("JOE"),
        radius: 35,
      ),
      title: SizedBox(
        height: 140,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text("jane Doe"), Text("10 OCT 2018")]),
              const Text(
                  "loreuin, ipsyub jst amen \n hatyhd ju6ibh goood gor such ha been"),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.5),
                        // color: Colors.yellow,
                        image: const DecorationImage(
                            image: AssetImage(
                              "iconimages/shoe.png",
                            ),
                            fit: BoxFit.cover)),
                    margin: const EdgeInsets.all(4),
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.5),
                        // color: Colors.yellow,
                        image: const DecorationImage(
                            image: AssetImage(
                              "iconimages/shoe.png",
                            ),
                            fit: BoxFit.cover)),
                    margin: const EdgeInsets.all(4),
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.5),
                        // color: Colors.yellow,
                        image: const DecorationImage(
                            image: AssetImage(
                              "iconimages/shoe.png",
                            ),
                            fit: BoxFit.cover)),
                    margin: const EdgeInsets.all(4),
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.5),
                        // color: Colors.yellow,
                        image: const DecorationImage(
                            image: AssetImage(
                              "iconimages/shoe.png",
                            ),
                            fit: BoxFit.cover)),
                    margin: const EdgeInsets.all(4),
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
