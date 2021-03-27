import 'package:flutter/material.dart';

class HorizontalSpacing extends StatelessWidget {
  final double width;

  const HorizontalSpacing(
    this.width, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
