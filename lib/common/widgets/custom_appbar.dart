import 'package:flutter/material.dart';
import 'package:spotify_clone/common/helpers/is_dark_mode.dart';
import 'package:spotify_clone/core/config/theme/app_color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: context.isDarkMode ? AppColor.white : AppColor.black,
    );
  }
}
