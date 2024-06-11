import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetBuildBtn extends StatelessWidget {
  const WidgetBuildBtn({
    super.key,
    required this.onClick,
    required this.name,
  });
  // * properties
  final String name;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      // * border radius for button
      borderRadius: BorderRadius.circular(30),
      child: SizedBox(
        // * width & height for button
        width: 60,
        height: 60,
        // * button
        child: ElevatedButton(
          // * button style
          style: ButtonStyle(
            alignment: Alignment.center,
            backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 255, 142, 3),
            ),
          ),
          // * onPressed => performed when press on any button
          onPressed: onClick,
          // * text insid button
          child: Text(
            name,
            // * style for text
            style: GoogleFonts.vazirmatn(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
