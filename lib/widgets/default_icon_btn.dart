import 'package:flutter/material.dart';

class DefaultIconBtn extends StatelessWidget {
  final bool isLarge;
  final void Function()? onPressed;
  const DefaultIconBtn({super.key, this.isLarge = false, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: IconButton.styleFrom(
        padding: isLarge ? EdgeInsets.all(20) : null,
      ),
      icon: Icon(Icons.ac_unit_rounded),
    );
  }
}
