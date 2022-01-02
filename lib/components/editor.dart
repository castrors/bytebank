import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  const Editor(
      {Key? key,
      required this.controlador,
      required this.rotulo,
      required this.dica,
      this.icone})
      : super(key: key);

  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData? icone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(fontSize: 24),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
