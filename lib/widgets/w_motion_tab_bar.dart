import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class WidgetMotionTabBar extends StatelessWidget {
  const WidgetMotionTabBar({super.key, required this.controller});

  /// [controller] controller MotionTabBar
  final MotionTabBarController controller;
  @override
  Widget build(BuildContext context) {
    return MotionTabBar(
      // *controller of MotionTabBar
      controller: controller,
      // * initialSelectedTab
      initialSelectedTab: "صوتيات",
      // * labels
      labels: const [
        "فيديوهات",
        "صوتيات",
      ],
      // * icons
      icons: const [
        Icons.video_collection_outlined,
        Icons.library_music_outlined,
      ],
      // * size for tab
      tabSize: 55,
      // * color for tab selected
      tabSelectedColor: const Color.fromARGB(255, 80, 139, 228),
      // * height & color for tab bar
      tabBarHeight: 60,
      tabBarColor: const Color.fromARGB(255, 214, 217, 223),
      // * size & color for tab icon
      tabIconSize: 27,
      tabIconColor: const Color.fromARGB(255, 71, 76, 83),
      // * size & color for tab icon selected
      tabIconSelectedSize: 27,
      tabIconSelectedColor: Colors.white,
      // * style for text
      textStyle: GoogleFonts.vazirmatn(
        fontSize: 12,
        color: const Color.fromARGB(255, 71, 76, 83),
        fontWeight: FontWeight.bold,
      ),
      // * onTabItemSelected => performed when select item from tab bar
      onTabItemSelected: (index) {
        controller.index = index;
      },
    );
  }
}
