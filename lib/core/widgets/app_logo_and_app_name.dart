import 'package:dubli/core/utils/app_image_assets.dart';
import 'package:dubli/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppLogoAndAppName extends StatelessWidget {
  const AppLogoAndAppName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          ImagesAssetsManager.applogoImage,
          height: 200,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'DUPLI',
          style: AppStyle.font80Whitesemibold,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Your Digital Twin',
          style: AppStyle.font40Whitesemibold,
        ),
      ],
    );
  }
}
