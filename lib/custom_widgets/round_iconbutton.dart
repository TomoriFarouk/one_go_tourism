import 'package:flutter/material.dart';


class RoundTourcardButton extends StatelessWidget {

  final  icon;
  final  onPressed;
const RoundTourcardButton(this.icon, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF1F66D0),
      child: Icon(icon),
    );
  }
}
