import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetVideoInfo extends StatelessWidget {
  const WidgetVideoInfo(
      {super.key, required this.title, required this.duration});
  final String title;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // * video title
          Text(
            title,
            // * style for video title
            style: GoogleFonts.vazirmatn(fontSize: 15, color: Colors.white),
            // * change text direction
            textDirection: TextDirection.rtl,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // * time text
              Text(
                duration,
                style: GoogleFonts.vazirmatn(color: Colors.white),
              ),
              // * video icon
              const Icon(Icons.videocam, color: Colors.white)
            ],
          )
        ],
      ),
    );
  }
}
