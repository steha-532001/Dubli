import 'package:dubli/core/utils/app_colors.dart';
import 'package:dubli/core/utils/app_image_assets.dart';
import 'package:dubli/core/utils/app_styles.dart';
import 'package:dubli/core/widgets/app_bottom.dart';
import 'package:dubli/feature/login/logic/cubit/login_cubit.dart';
import 'package:dubli/feature/login/ui/widgets/donot_have_acound_and_sign_up.dart';
import 'package:dubli/feature/login/ui/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        var cubit = BlocProvider.of<LoginCubit>(context);

        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Image.asset(
                    ImagesAssetsManager.applogoImage,
                    height: 150,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'DUPLI',
                      style: AppStyle.font70Whitesemibold,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorManager.darkGreyColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Column(
                      children: [
                        SizedBox(height: 35),
                        LoginForm(),
                        SizedBox(height: 35),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  CustomBottom(
                    bottomHeight: 60,
                    onPressed: () {
                      if (cubit.formKey.currentState!.validate() == true) {
                      } else {
                        cubit.autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                    bottomtext: 'Login',
                    textBottomStyle: AppStyle.font30Primarymedium,
                    backgroundColor: ColorManager.darkyellowColor,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Or',
                    style: AppStyle.font18Whitemedium,
                  ),
                  const DonotHaveAcoundAndSignUp()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
