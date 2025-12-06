import 'package:flutter/material.dart';

class BottomButtonBar extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const BottomButtonBar({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: const Color(0xffE83D67),
      child: Center(
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
