import 'package:flutter/material.dart';

import '../spacing/horizontal_spacing.dart';

class AdvantagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 2,
          ),
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 16,
        children: [
          _advantageItem(
            title: '+45.000 alunos',
            subtitle: 'Didática garantida',
          ),
          _advantageItem(
            title: '+45.000 alunos',
            subtitle: 'Didática garantida',
          ),
          _advantageItem(
            title: '+45.000 alunos',
            subtitle: 'Didática garantida',
          ),
        ],
      ),
    );
  }

  Widget _advantageItem({
    @required String title,
    @required String subtitle,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        HorizontalSpacing(8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
