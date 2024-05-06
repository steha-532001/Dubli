// ignore_for_file: must_be_immutable

import 'package:dubli/core/helper/naviagtion_extentaions.dart';
import 'package:dubli/core/routing/routes.dart';
import 'package:dubli/core/utils/app_colors.dart';
import 'package:dubli/core/utils/app_styles.dart';
import 'package:dubli/core/widgets/app_bottom.dart';
import 'package:dubli/core/widgets/app_logo_and_app_name.dart';
import 'package:dubli/feature/signup/logic/cubit/sign_up_cubit.dart';
import 'package:dubli/feature/signup/ui/widgets/have_an_acount_and_sign_in.dart';
import 'package:dubli/feature/signup/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignupViewBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {},
      builder: (context, state) {
        // var signUpCubit =
        //     BlocProvider.of<SignUpCubit>(context); // get the cubit instance
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  const AppLogoAndAppName(
                    logoHeight: 140,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorManager.darkGreyColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Column(
                      children: [
                        SizedBox(height: 15),
                        SignUpForm(),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomBottom(
                    bottomHeight: 60,
                    bottomtext: 'Sign Up',
                    onPressed: () {
                      if (context
                          .read<SignUpCubit>()
                          .formKey
                          .currentState!
                          .validate()) {
                        context.navigateTo(routeName: Routes.layOutViewsRoute);
                      } else {
                        context.read<SignUpCubit>().autovalidateMode =
                            AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                    backgroundColor: ColorManager.darkyellowColor,
                    textBottomStyle: AppStyle.font30Primarymedium,
                  ),
                  const HaveAnAcountAndSignIn()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
