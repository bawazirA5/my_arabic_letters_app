import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_arabic_letters_app/constant/app_name.dart';

class WidgetAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WidgetAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // * background color of appBar
      backgroundColor: const Color.fromARGB(255, 71, 76, 83),
      // * title of appBar
      title: Text(
        AppName.name,
        // * style of title
        style: GoogleFonts.vazirmatn(fontSize: 25),
      ),
      // * center title inside appBar
      centerTitle: true,
      // * right side for appBar
      actions: [
        Padding(
          padding: const EdgeInsets.all(4),
          child: Image.asset('assets/images/pic_appbar.png'),
        )
      ],
      // * left side for appBar
      leading: Padding(
        padding: const EdgeInsets.all(4),
        child: Image.asset('assets/images/pic2_appbar.png'),
      ),
    );
  }

// * size of appBar
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
