import 'package:dubli/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Chat View',
          style: AppStyle.font18Whitemedium,
        ),
        const Row()
      ],
    );
  }
}
