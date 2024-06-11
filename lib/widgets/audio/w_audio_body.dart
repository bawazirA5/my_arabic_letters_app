import 'package:flutter/material.dart';
import 'package:my_arabic_letters_app/controllers/c_audio.dart';
import 'package:my_arabic_letters_app/widgets/audio/w_audio_build_btn.dart';

class WidgetAudioBody extends StatelessWidget {
  const WidgetAudioBody({super.key, required this.notification});
  // * this method performed in view home when press on any button
  final Function(String audio) notification;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // * i => represents index of the row
        for (int i = 0; i < 7; i++)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // * j => represents index of the column inside the row
              for (int j = 3; j >= 0; j--)
                // * button
                WidgetBuildBtn(
                  onClick: () {
                    notification(ControllerAudio().getAudio(i * 4 + j).audio);
                  },
                  name: ControllerAudio().getAudio(i * 4 + j).name,
                ),
            ],
          ),
      ],
    );
  }
}
