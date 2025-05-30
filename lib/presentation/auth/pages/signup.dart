import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/common/helpers/is_dark_mode.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/common/widgets/custom_appbar.dart';
import 'package:spotify_clone/core/config/assets/app_vectors.dart';
import 'package:spotify_clone/core/config/theme/app_color.dart';
import 'package:spotify_clone/presentation/auth/pages/signin.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: SvgPicture.asset(
          AppVectors.appLogo,
          height: 40,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: [
              Text(
                'Register',
                style: TextStyle(
                  fontSize: 30,
                  color: context.isDarkMode ? AppColor.white : AppColor.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              TextField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  hintText: 'Full name',
                ).applyDefaults(Theme.of(context).inputDecorationTheme),
              ),
              const SizedBox(height: 20),
              TextField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  hintText: 'Enter email',
                ).applyDefaults(Theme.of(context).inputDecorationTheme),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                ).applyDefaults(Theme.of(context).inputDecorationTheme),
              ),
              const SizedBox(height: 50),
              BasicAppButton(
                title: 'Create Account',
                onPressed: () {},
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Do You Have An Account?',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColor.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SigninPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
