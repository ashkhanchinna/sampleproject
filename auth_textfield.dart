import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextEditingController ctr;

  const TextFieldWidget({Key? key, required this.label, required this.icon,required this.ctr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:ctr ,
      decoration:  InputDecoration(
        border: InputBorder.none,
        labelText: label,
        prefixIcon: Icon(icon),
      ),
    );
  }
}
