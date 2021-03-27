import 'package:flutter/material.dart';
import 'package:udemy_clone/widgets/spacing/horizontal_spacing.dart';

import 'responsive_body_content.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: _body(),
    );
  }

  Widget _body() {
    return Row(
      children: [
        Text('Ubely'),
        HorizontalSpacing(32),
        ResponsiveBodyContent(),
        HorizontalSpacing(16),
        _shoppingCartButton(),
        HorizontalSpacing(16),
        _loginButton(),
        HorizontalSpacing(8),
        _createAccountButton(),
      ],
    );
  }

  Widget _customButton({
    @required String text,
    @required Function onTap,
    MaterialStateProperty<Color> foregroundColor,
    MaterialStateProperty<Color> backgroundColor,
  }) {
    foregroundColor ??= MaterialStateProperty.all(
      Colors.white,
    );

    return SizedBox(
      height: 38,
      child: OutlinedButton(
        child: Text(text),
        onPressed: onTap,
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            BorderSide(
              color: Colors.white,
            ),
          ),
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          // textStyle:
        ),
      ),
    );
  }

  Widget _shoppingCartButton() {
    return IconButton(
      hoverColor: Colors.grey.withOpacity(0.5),
      icon: Icon(Icons.shopping_cart),
      onPressed: () {},
    );
  }

  Widget _loginButton() {
    return _customButton(
      text: 'Fazer login',
      onTap: () {},
      foregroundColor: MaterialStateProperty.all(
        Colors.white,
      ),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.hovered)) {
          return Colors.grey.withOpacity(0.5);
        }
        return Colors.black;
      }),
    );
  }

  Widget _createAccountButton() {
    return _customButton(
      text: 'Criar conta',
      foregroundColor: MaterialStateProperty.all(
        Colors.black,
      ),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.hovered)) {
          return Colors.white.withOpacity(0.5);
        }
        return Colors.white;
      }),
      onTap: () {},
    );
  }
}
