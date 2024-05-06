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
        Text(
          'DUPLI',
          style: AppStyle.font70Whitesemibold,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Your Digital Twin',
          style: AppStyle.font30Whitesemibold,
        ),
      ],
    );
  }
}
