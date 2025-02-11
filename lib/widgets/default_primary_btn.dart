import 'package:flutter/material.dart';

class DefaultPrimaryBtn extends StatelessWidget {
  final bool isLarge;
  final void Function()? onPressed;
  const DefaultPrimaryBtn({super.key, this.isLarge = false, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: isLarge ? EdgeInsets.all(24) : null,
      ),
      child: Text('Button'),
    );
  }
}
