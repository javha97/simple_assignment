import 'package:flutter/material.dart';

class DefaultTextBtn extends StatelessWidget {
  final bool isLarge;
  final void Function()? onPressed;
  const DefaultTextBtn({super.key, this.isLarge = false, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: isLarge ? EdgeInsets.symmetric(vertical: 20) : null,
      ),
      child: Text('Button'),
    );
  }
}
