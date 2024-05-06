import 'package:dubli/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class EventsViewBody extends StatelessWidget {
  const EventsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Events View',
          style: AppStyle.font18Whitemedium,
        ),
        const Row()
      ],
    );
  }
}
