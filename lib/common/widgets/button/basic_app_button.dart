import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final String title;
  final double height;
  final VoidCallback onPressed;

  const BasicAppButton({
    super.key,
    required this.title,
    this.height = 70,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        // backgroundColor: Colors.white,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(10),
        // ),
        minimumSize: Size.fromHeight(height),
      ),
      child: Text(title),
    );
  }
}
