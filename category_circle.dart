import 'package:flutter/material.dart';

Widget catCircle(
    {required String name,
    required String icon,
    required Color color,
    required Color shadowColor,
    required void Function() action,
    bool icons = false}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      InkWell(
        onTap: action,
        child: Container(
          margin: const EdgeInsets.only(left: 5, right: 7),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: shadowColor.withOpacity(0.5),
                spreadRadius: 0.4,
                blurRadius: 3,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: icons
              ? const Icon(Icons.arrow_forward_ios, color: Colors.orange)
              : Image(
                  image: AssetImage(icon),
                  fit: BoxFit.scaleDown,
                  height: 35,
                  width: 35,
                ),
        ),
      ),
      Text(name),
    ],
  );
}