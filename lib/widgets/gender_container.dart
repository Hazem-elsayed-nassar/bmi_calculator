// ignore_for_file: file_names

import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  final String title;
  final IconData icon;

  const GenderContainer({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff24263B),
        ),
        padding: EdgeInsets.all(24),
        child: Column(children: [Icon(icon, size: 100), Text(title)]),
      ),
    );
  }
}
