import 'package:flutter/material.dart';

class AuthButtonWidget extends StatelessWidget {
  final String name;
  final Color? bgcolor;
  final IconData? icon;
  final Color? textcolour;
  final void Function() action;
  final Color? iconcolor;
  final Color? iconbg;
  final double? size;
  final double margin;
  final double marginb;
  final bool align;
  final double padding;
  final double textsize;

  const AuthButtonWidget(
      {Key? key,
      required this.name,
      this.bgcolor = Colors.orange,
      this.icon = Icons.arrow_forward_ios,
      this.textcolour = Colors.white,
      required this.action,
      this.iconcolor = Colors.orange,
      this.iconbg = Colors.white,
      this.size = 50,
      this.margin = 10,
      this.marginb = 25,
      this.padding = 20,
      this.textsize = 20,
      this.align = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: size,
      margin: EdgeInsets.only(
          top: margin, bottom: marginb, left: margin, right: margin),
      child: InkWell(
        onTap: action,
        child: Stack(
          children: [
            Align(
              alignment: align ? Alignment.center : Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: align ? 0 : padding),
                child: Text(
                  name,
                  style: TextStyle(
                      color: textcolour,
                      fontWeight: FontWeight.w800,
                      fontSize: textsize),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                backgroundColor: iconbg,
                radius: 18,
                child: Icon(
                  icon,
                  color: iconcolor,
                  size: 22,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
