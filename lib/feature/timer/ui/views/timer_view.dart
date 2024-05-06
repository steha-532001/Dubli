import 'package:dubli/feature/timer/ui/widgets/timer_view_body.dart';
import 'package:flutter/material.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TimerViewBody(),
    );
  }
}
