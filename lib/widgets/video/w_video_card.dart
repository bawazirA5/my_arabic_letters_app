import 'package:flutter/material.dart';
import 'package:my_arabic_letters_app/models/m_video.dart';
import 'package:my_arabic_letters_app/views/v_web_view.dart';
import 'package:my_arabic_letters_app/widgets/video/w_video_image.dart';
import 'package:my_arabic_letters_app/widgets/video/w_video_info.dart';

class WidgetVideoCard extends StatelessWidget {
  const WidgetVideoCard({super.key, required this.data});
  final ModelVideo data;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      // * border radius for container
      borderRadius: BorderRadius.circular(28),
      child: Container(
        // * height of container
        height: 100,
        // * color of container
        color: const Color.fromARGB(255, 255, 142, 3),
        // * margin of container
        margin: const EdgeInsets.all(5),
        child: InkWell(
          // * onTap => performed when press on card
          onTap: () {
            MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => ViewWebView(url: data.url),
            );
            // * responsible about move from page to another page
            Navigator.push(context, route);
          },
          child: Row(
            children: [
              // * video info
              Expanded(
                flex: 2,
                child:
                    WidgetVideoInfo(title: data.title, duration: data.duration),
              ),
              Expanded(
                  child: WidgetVideoImage(
                image: data.image,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
