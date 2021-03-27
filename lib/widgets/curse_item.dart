import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CurseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://images.unsplash.com/photo-1584438784894-089d6a62b8fa?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
          fit: BoxFit.fitWidth,
        ),
        Flexible(
          child: AutoSizeText(
            'Criação de Apps Android e iOS com Flutter',
            maxLines: 2,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
        Text(
          'Mateus de Morais Ramalho',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Text(
          'R\$ 19,99',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
