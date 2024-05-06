import 'package:dubli/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TimerViewBody extends StatelessWidget {
  const TimerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Timer View',
          style: AppStyle.font18Whitemedium,
        ),
        const Row()
      ],
    );
  }
}
