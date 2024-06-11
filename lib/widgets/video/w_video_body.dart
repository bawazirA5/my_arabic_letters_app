import 'package:flutter/material.dart';
import 'package:my_arabic_letters_app/controllers/c_video.dart';
import 'package:my_arabic_letters_app/widgets/video/w_video_card.dart';

class WidgetVideoBody extends StatelessWidget {
  const WidgetVideoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ControllerVideo().getLength(),
      itemBuilder: (BuildContext context, int index) {
        return WidgetVideoCard(data: ControllerVideo().getAudio(index));
      },
    );
  }
}
