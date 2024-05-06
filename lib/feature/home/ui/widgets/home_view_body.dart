import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Home View',
          style: AppStyle.font18Whitemedium,
        ),
        const Row()
      ],
    );
  }
}
