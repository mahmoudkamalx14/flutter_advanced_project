// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/helpers/spacing.dart';
import 'package:flutter_advanced_project/core/theme/styles.dart';
import 'package:flutter_advanced_project/core/widgets/app_text_button.dart';
import 'package:flutter_advanced_project/features/login/data/models/login_request_body.dart';
import 'package:flutter_advanced_project/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced_project/features/login/ui/widgets/already_have_an_account_yet.dart';
import 'package:flutter_advanced_project/features/login/ui/widgets/email_and_password.dart';
import 'package:flutter_advanced_project/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter_advanced_project/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24mainBlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font15GrayRegluar,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13mainBlueRegular,
                        ),
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      textButton: 'Login',
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    verticalSpace(48),
                    const TermsAndConditions(),
                    verticalSpace(24),
                    const AlreadyHaveAnAccountYet(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }
}
