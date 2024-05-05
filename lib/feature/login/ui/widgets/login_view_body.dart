import 'package:dubli/core/utils/app_colors.dart';
import 'package:dubli/core/utils/app_image_assets.dart';
import 'package:dubli/core/utils/app_styles.dart';
import 'package:dubli/core/widgets/app_bottom.dart';
import 'package:dubli/feature/login/ui/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 70),
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
                    SizedBox(height: 50),
                    LoginForm(),
                    SizedBox(height: 40),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              CustomBottom(
                bottomHeight: 60,
                onPressed: () {},
                bottomtext: 'Login',
                textBottomStyle: AppStyle.font30Primarymedium,
                backgroundColor: ColorManager.darkyellowColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
