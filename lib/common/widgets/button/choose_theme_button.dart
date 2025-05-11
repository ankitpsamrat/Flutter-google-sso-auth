import 'package:flutter/material.dart';
import 'package:spotify_clone/core/config/theme/app_color.dart';

class ChooseThemeButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  const ChooseThemeButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            height: 80,
            width: 80,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: const BoxDecoration(
              color: AppColor.darkGrey,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
