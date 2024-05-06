import 'package:dubli/feature/events/ui/widgets/events_view_body.dart';
import 'package:flutter/material.dart';

class EventsView extends StatelessWidget {
  const EventsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EventsViewBody(),
    );
  }
}
