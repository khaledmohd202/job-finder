import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  const IconText({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.yellow,
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
