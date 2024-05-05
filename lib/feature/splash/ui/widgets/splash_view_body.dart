import 'package:animate_do/animate_do.dart';
import 'package:dubli/core/helper/naviagtion_extentaions.dart';
import 'package:dubli/core/routing/routes.dart';
import 'package:dubli/core/utils/app_image_assets.dart';
import 'package:dubli/core/utils/app_styles.dart';
import 'package:dubli/feature/splash/logic/cubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashScreanBodyState();
}

class _SplashScreanBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    context.read<SplashCubit>().navigateToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is SplashNavigatedToHome) {
          context.navigateAndRemoveUntil(newRoute: Routes.intorViewsRoute);
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            ImagesAssetsManager.applogoImage,
            height: 200,
          ),
          FadeInLeft(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'DUPLI',
                style: AppStyle.font70Whitesemibold,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          FadeInRight(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Your Digital Twin',
                style: AppStyle.font30Whitesemibold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
