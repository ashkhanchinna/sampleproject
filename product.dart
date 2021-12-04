import 'dart:ui';

import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Select Color",
          style: TextStyle(fontSize: 18),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          height: 80,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                size(Colors.green, true),
                size(Colors.yellow),
                size(Colors.black),
                size(Colors.pink),
                size(Colors.orange),
                size(Colors.red),
                size(Colors.blue),
                size(Colors.teal),
                size(Colors.amber),
              ],
            ),
          ),
        ),
        const Text(
          "Select Size",
          style: TextStyle(fontSize: 18),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          height: 80,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                color("4.5"),
                color("5.0"),
                color("5.5"),
                color("6.0"),
                color("6.5"),
                color("7.0"),
                color("7.5"),
                color("8.0"),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget size(Color color, [bool tick = false]) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      margin: const EdgeInsets.only(right: 8),
      child: CircleAvatar(
        backgroundColor: color,
        radius: 25,
        child: tick
            ? const Icon(
                Icons.check,
                color: Colors.white,
              )
            : null,
      ),
    );
  }

  Widget color(String size) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(right: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
        child: Text(
          size,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
