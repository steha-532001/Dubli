import 'package:dubli/feature/chat/ui/views/chat_view.dart';
import 'package:dubli/feature/home/ui/views/home_view.dart';
import 'package:dubli/feature/layout/data/models/change_index_params.dart';
import 'package:dubli/feature/layout/data/repositories/layout_repo.dart';
import 'package:dubli/feature/layout/logic/cubit/layout_cubit.dart';
import 'package:dubli/feature/setting/ui/views/settiings_view.dart';
import 'package:dubli/feature/timer/ui/views/timer_view.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../events/ui/views/events_view.dart';

class LayoutRepoImpl extends LayOutRepo {
  LayoutRepoImpl();
  @override
  void changeBottomNavIndex({required ChangeIndexParams changeIndexParams}) {
    LayoutCubit.getObject(changeIndexParams.context).currentIndex =
        changeIndexParams.index!;
  }

  @override
  void changeBottomNavToHome({required ChangeIndexParams changeIndexParams}) {
    LayoutCubit.getObject(changeIndexParams.context).currentIndex = 2;
  }

  @override
  List<Widget> getBody() {
    return const <Widget>[
      ChatView(),
      TimerView(),
      HomeView(),
      EventsView(),
      SettingsView(),
    ];
  }

  @override
  List<BottomNavigationBarItem> getBottomNavItems() =>
      const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.timer),
          label: 'timer',
        ),
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Iconsax.home),
        ),
        BottomNavigationBarItem(
          label: 'Events',
          icon: Icon(Icons.event),
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.setting),
          label: 'Settings',
        ),
      ];
}
