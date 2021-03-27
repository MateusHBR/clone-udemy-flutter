import 'package:flutter/material.dart';
import 'package:udemy_clone/utils/breakpoints.dart';

import '../custom_search_field.dart';
import '../spacing/vertical_spacing.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWith = constraints.maxWidth;

        if (maxWith >= Breakpoints.web) {
          return _webTopSection();
        } else if (maxWith >= Breakpoints.mobile) {
          return _tabletTopSection();
        }

        return _mobileTopSection();
      },
    );
  }

  Widget _webTopSection() {
    return AspectRatio(
      aspectRatio: 3.5,
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 3.5,
            child: Image.network(
              "https://img-b.udemycdn.com/notices/home_banner/image_udlite/f8324ecd-1a8d-4260-8e15-ec8aaeffa1d1.jpg?secure=-eRz-h63XWUvoYrcMDtJEA%3D%3D%2C1616959523",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 50,
            top: 20,
            bottom: 20,
            child: _customCard(),
          ),
        ],
      ),
    );
  }

  Widget _tabletTopSection() {
    return SizedBox(
      height: 320,
      child: Stack(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Image.network(
              "https://img-b.udemycdn.com/notices/home_banner/image_udlite/f8324ecd-1a8d-4260-8e15-ec8aaeffa1d1.jpg?secure=-eRz-h63XWUvoYrcMDtJEA%3D%3D%2C1616959523",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 20,
            top: 10,
            bottom: 10,
            child: _customCard(width: 350, fontSizeTitle: 32, fontSizeBody: 18),
          ),
        ],
      ),
    );
  }

  Widget _mobileTopSection() {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 3.4,
          child: Image.network(
            "https://img-b.udemycdn.com/notices/home_banner/image_udlite/f8324ecd-1a8d-4260-8e15-ec8aaeffa1d1.jpg?secure=-eRz-h63XWUvoYrcMDtJEA%3D%3D%2C1616959523",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Aprenda Flutter com este curso',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              VerticalSpacing(16),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum Lorem Ipsum is simply dummy",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              VerticalSpacing(16),
              CustomSearchField(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _customCard({
    double width = 450,
    double fontSizeTitle = 40,
    double fontSizeBody = 18,
  }) {
    return Card(
      color: Colors.black,
      elevation: 8,
      child: Container(
        padding: EdgeInsets.all(22),
        width: width,
        child: Column(
          children: [
            Text(
              'Aprenda Flutter com este curso',
              style: TextStyle(
                fontSize: fontSizeTitle,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            VerticalSpacing(8),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum Lorem Ipsum is simply dummy",
              style: TextStyle(
                fontSize: fontSizeBody,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            CustomSearchField(),
          ],
        ),
      ),
    );
  }
}
