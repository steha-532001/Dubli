import 'package:dubli/core/helper/naviagtion_extentaions.dart';
import 'package:dubli/core/routing/routes.dart';
import 'package:dubli/core/utils/app_colors.dart';
import 'package:dubli/core/utils/app_image_assets.dart';
import 'package:dubli/core/utils/app_styles.dart';
import 'package:dubli/core/widgets/app_bottom.dart';
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
          Image.asset(
            ImagesAssetsManager.applogoImage,
            height: 200,
          ),
          const Spacer(),
          Align(
            alignment: Alignment.center,
            child: Text(
              'DUPLI',
              style: AppStyle.font80Whitesemibold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Your Digital Twin',
              style: AppStyle.font40Whitesemibold,
            ),
          ),
          const Spacer(),
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
            onPressed: () {},
            bottomtext: 'Sign Up',
            textBottomStyle: AppStyle.font30Primarymedium,
            backgroundColor: ColorManager.darkyellowColor,
          ),
        ],
      ),
    );
  }
}
