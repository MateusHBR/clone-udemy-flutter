import 'package:flutter/material.dart';

class VerticalSpacing extends StatelessWidget {
  final double heigth;

  const VerticalSpacing(this.heigth, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heigth,
    );
  }
}
