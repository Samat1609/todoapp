import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        color: Theme.of(context).primaryColor,
        onPressed: onPressed,
        child: Text(text));
  }
}
