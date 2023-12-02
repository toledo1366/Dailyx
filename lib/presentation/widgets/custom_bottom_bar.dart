import 'package:auto_route/auto_route.dart';
import 'package:dailyx/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

class CustomBottomBar extends StatelessWidget {
  final _pageControlller = PageController();

  CustomBottomBar({super.key});

  @override
  void dispose() {
    _pageControlller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RollingBottomBar(
      color: Color.fromARGB(255, 188, 118, 250),
      controller: _pageControlller,
      flat: true,
      useActiveColorByDefault: false,
      items: const [
        RollingBottomBarItem(Icons.home,
            label: 'Home', activeColor: Colors.deepPurpleAccent),
            RollingBottomBarItem(Icons.home,
            label: 'Home', activeColor: Colors.deepPurpleAccent),
            RollingBottomBarItem(Icons.home,
            label: 'Home', activeColor: Colors.deepPurpleAccent),
            RollingBottomBarItem(Icons.home,
            label: 'Home', activeColor: Colors.deepPurpleAccent),
      ],
      enableIconRotation: true,
      onTap: (index) {
        AutoRouter.of(context).navigate(TaskFormRoute());
      },
    );
  }
}