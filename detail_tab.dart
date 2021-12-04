import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listtile("Brand", "Angle boot", "Sku", "0975434679896"),
        const Divider(),
        listtile("Condition", "brand new", "Mterial", "velvet"),
        const Divider(),
        listtile("Brand", "Angle boot", "Sku", "0975434679896"),
        const Divider(),
        listtile("Fitting", "True TO Size", "category", "Women Shoes"),
        const Divider(),
      ],
    );
  }

  Widget listtile(String text, String des, String t1, String t2) {
    return Card(
      color: Colors.grey.shade200,
      elevation: 0,
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text),
            Text(des),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(t1),
            Text(t2),
          ],
        ),
      ),
    );
  }
}
