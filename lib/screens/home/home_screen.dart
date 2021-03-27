import 'package:flutter/material.dart';
import 'package:udemy_clone/utils/breakpoints.dart';
import 'package:udemy_clone/widgets/app_bar/mobile_app_bar.dart';
import 'package:udemy_clone/widgets/app_bar/web_app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        return Scaffold(
          drawer: maxWidth < Breakpoints.mobile ? Drawer() : null,
          appBar: maxWidth < Breakpoints.mobile
              ? PreferredSize(
                  preferredSize: Size(constraints.maxWidth, 56),
                  child: MobileAppBar(),
                )
              : PreferredSize(
                  preferredSize: Size(constraints.maxWidth, 64),
                  child: WebAppBar(),
                ),
        );
      },
    );
  }
}
