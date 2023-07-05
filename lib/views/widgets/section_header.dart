import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader(
      {Key? key,
      required this.title,
      this.fontWeight = FontWeight.bold,
      this.fontSize = 20.0,
      this.color = Colors.white})
      : super(key: key);
  final String title;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(fontWeight: fontWeight, fontSize: fontSize, color: color),
    );
  }
}
