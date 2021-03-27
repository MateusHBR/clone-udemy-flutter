import 'package:flutter/material.dart';
import 'package:udemy_clone/widgets/curse_item.dart';

import '../../utils/breakpoints.dart';
import './app_bar/mobile_app_bar.dart';
import './app_bar/web_app_bar.dart';
import './section/advantages_section.dart';
import './section/top_section.dart';

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
        constraints: BoxConstraints(maxWidth: 1400),
        child: ListView(
          children: [
            TopSection(),
            AdvantagesSection(),
            _cursesSection(),
          ],
        ),
      ),
    );
  }

  Widget _cursesSection() {
    return LayoutBuilder(builder: (context, constraints) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: constraints.maxWidth <= Breakpoints.web ? 16 : 0,
        ),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          return CurseItem();
        },
      );
    });
  }
}
