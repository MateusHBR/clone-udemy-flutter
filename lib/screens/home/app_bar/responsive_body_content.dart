import 'package:flutter/material.dart';
import 'package:udemy_clone/widgets/spacing/horizontal_spacing.dart';

class ResponsiveBodyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              _textField(),
              if (constraints.maxWidth >= 500) ...[
                HorizontalSpacing(10),
                _textButton(
                  text: 'Aprender',
                ),
              ],
              if (constraints.maxWidth >= 600) ...[
                HorizontalSpacing(10),
                _textButton(
                  text: 'Comprar',
                ),
              ],
            ],
          );
        },
      ),
    );
  }

  Widget _textField() {
    return Expanded(
      child: Container(
        height: 40,
        color: Colors.grey[200],
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Procure um curso',
            prefixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            fillColor: Colors.grey[200],
          ),
        ),
      ),
    );
  }

  Widget _textButton({@required String text}) {
    return TextButton(
      onPressed: () {},
      child: Text(text),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.white.withOpacity(0.5);
            }
            return Colors.white;
          },
        ),
      ),
    );
  }
}
