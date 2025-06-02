import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/common/helpers/is_dark_mode.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/common/widgets/custom_appbar.dart';
import 'package:spotify_clone/core/config/assets/app_vectors.dart';
import 'package:spotify_clone/core/config/theme/app_color.dart';
import 'package:spotify_clone/data/models/auth/signin_user_reg.dart';
import 'package:spotify_clone/domain/usecases/auth/signin.dart';
import 'package:spotify_clone/presentation/auth/pages/signup.dart';
import 'package:spotify_clone/presentation/root/pages/root.dart';
import 'package:spotify_clone/service_locator.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  final _email = TextEditingController();
  final _password = TextEditingController();

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
                'Sign In',
                style: TextStyle(
                  fontSize: 30,
                  color: context.isDarkMode ? AppColor.white : AppColor.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              TextField(
                controller: _email,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  hintText: 'Enter username or email',
                ).applyDefaults(Theme.of(context).inputDecorationTheme),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _password,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ).applyDefaults(Theme.of(context).inputDecorationTheme),
              ),
              const SizedBox(height: 50),
              BasicAppButton(
                title: 'Sign In',
                onPressed: () async {
                  var result = await sl<SigninUseCase>().call(
                    params: SigninUserReg(
                      email: _email.text,
                      password: _password.text,
                    ),
                  );

                  result.fold((ifLeft) {
                    var snackbar = SnackBar(
                      backgroundColor: AppColor.blue,
                      content: Text(
                        ifLeft,
                        style: const TextStyle(
                          color: AppColor.white,
                        ),
                      ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  }, (ifRight) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Root(),
                        ),
                        (route) => false);
                  });
                },
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      fontSize: 14,
                      color:
                          context.isDarkMode ? AppColor.white : AppColor.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Register Now',
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
