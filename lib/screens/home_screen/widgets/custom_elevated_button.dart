import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.color,
    required this.title,
  });
  final Color color;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}
