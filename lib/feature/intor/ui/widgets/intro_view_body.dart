import 'package:dubli/core/helper/naviagtion_extentaions.dart';
import 'package:dubli/core/routing/routes.dart';
import 'package:dubli/core/utils/app_colors.dart';
import 'package:dubli/core/utils/app_styles.dart';
import 'package:dubli/core/widgets/app_bottom.dart';
import 'package:dubli/core/widgets/app_logo_and_app_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroViewBody extends StatelessWidget {
  const IntroViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          const AppLogoAndAppName(),
          const Spacer(
            flex: 2,
          ),
          CustomBottom(
            bottomHeight: 70,
            onPressed: () {
              context.navigateTo(routeName: Routes.loginViewsRoute);
            },
            bottomtext: 'Login',
            textBottomStyle: AppStyle.font30Primarymedium,
            backgroundColor: ColorManager.darkyellowColor,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomBottom(
            bottomHeight: 70,
            onPressed: () {
              context.navigateTo(routeName: Routes.signUpViewsRoute);
            },
            bottomtext: 'Sign Up',
            textBottomStyle: AppStyle.font30Primarymedium,
            backgroundColor: ColorManager.darkyellowColor,
          ),
        ],
      ),
    );
  }
}
