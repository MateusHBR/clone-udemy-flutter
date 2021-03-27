import 'package:flutter/material.dart';

import '../../utils/breakpoints.dart';
import '../../widgets/app_bar/mobile_app_bar.dart';
import '../../widgets/app_bar/web_app_bar.dart';
import '../../widgets/section/top_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        return Scaffold(
          backgroundColor: Colors.black,
          drawer: maxWidth < Breakpoints.mobile ? Drawer() : null,
          appBar: _header(maxWidth),
          body: _body(),
        );
      },
    );
  }

  Widget _header(double maxWidth) {
    if (maxWidth < Breakpoints.mobile) {
      return PreferredSize(
        preferredSize: Size(maxWidth, 56),
        child: MobileAppBar(),
      );
    }

    return PreferredSize(
      preferredSize: Size(maxWidth, 64),
      child: WebAppBar(),
    );
  }

  Widget _body() {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1400, maxHeight: 500),
        child: ListView(
          children: [
            TopSection(),
          ],
        ),
      ),
    );
  }
}
