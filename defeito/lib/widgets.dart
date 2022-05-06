import 'package:flutter/material.dart';

Widget meuWidgetTextGrande(String mensagem) {
  return Center(
    child: Text(
      mensagem,
      style: const TextStyle(fontSize: 40),
    ),
  );
}
