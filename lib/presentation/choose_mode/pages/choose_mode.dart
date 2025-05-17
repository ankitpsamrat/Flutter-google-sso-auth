import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/common/widgets/button/choose_theme_button.dart';
import 'package:spotify_clone/core/config/assets/app_images.dart';
import 'package:spotify_clone/core/config/assets/app_vectors.dart';
import 'package:spotify_clone/presentation/auth/pages/signup_signin_page.dart';
import 'package:spotify_clone/presentation/choose_mode/bloc/theme_cubit.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.chooseModeBg,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 80,
              ),
              child: Column(
                children: [
                  SvgPicture.asset(AppVectors.appLogo),
                  const Spacer(),
                  const Text(
                    'Choose mode',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ChooseThemeButton(
                          icon: Icons.light_mode_outlined,
                          title: 'Light Mode',
                          onPressed: () {
                            context
                                .read<ThemeCubit>()
                                .updateTheme(ThemeMode.light);
                          },
                        ),
                        ChooseThemeButton(
                          icon: Icons.dark_mode_outlined,
                          title: 'Dark Mode',
                          onPressed: () {
                            context
                                .read<ThemeCubit>()
                                .updateTheme(ThemeMode.dark);
                          },
                        ),
                      ],
                    ),
                  ),
                  BasicAppButton(
                    title: 'Continue',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupSigninPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
