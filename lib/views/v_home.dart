import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';
import 'package:my_arabic_letters_app/widgets/audio/w_audio_body.dart';
import 'package:my_arabic_letters_app/widgets/video/w_video_body.dart';
import 'package:my_arabic_letters_app/widgets/w_app_bar.dart';
import 'package:my_arabic_letters_app/widgets/w_motion_tab_bar.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> with TickerProviderStateMixin {
  /// [controller] controller MotionTabBar & TabBarView
  late MotionTabBarController controller;

  /// [initState] performed only one time when open view home
  @override
  void initState() {
    super.initState();
    controller = MotionTabBarController(
      initialIndex: 1,
      length: 2,
      vsync: this,
    );
  }

  /// [audioPlayer] control audios
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // * appBar
        appBar: const WidgetAppBar(),
        // * body
        body: TabBarView(
          // * controller TabBarView
          controller: controller,
          children: [
            // * video body
            const WidgetVideoBody(),
            // * audio body
            WidgetAudioBody(
              notification: (audio) {
                // * take path of audio & run audio
                audioPlayer.play(AssetSource(audio));
              },
            ),
          ],
        ),
        // * bottomNavigationBar
        bottomNavigationBar: WidgetMotionTabBar(controller: controller));
  }
}
