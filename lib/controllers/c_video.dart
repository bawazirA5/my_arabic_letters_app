import 'package:my_arabic_letters_app/constant/videos_data.dart';
import 'package:my_arabic_letters_app/models/m_video.dart';

class ControllerVideo {
  // * list of videos data
  List<ModelVideo> videosData = [
    ModelVideo(
      title: VideosData.title1,
      image: VideosData.image1,
      url: VideosData.url1,
      duration: VideosData.duration1,
    ),
    ModelVideo(
      title: VideosData.title2,
      image: VideosData.image2,
      url: VideosData.url2,
      duration: VideosData.duration2,
    ),
    ModelVideo(
      title: VideosData.title3,
      image: VideosData.image3,
      url: VideosData.url3,
      duration: VideosData.duration3,
    ),
    ModelVideo(
      title: VideosData.title4,
      image: VideosData.image4,
      url: VideosData.url4,
      duration: VideosData.duration4,
    ),
    ModelVideo(
      title: VideosData.title5,
      image: VideosData.image5,
      url: VideosData.url5,
      duration: VideosData.duration5,
    ),
    ModelVideo(
      title: VideosData.title6,
      image: VideosData.image6,
      url: VideosData.url6,
      duration: VideosData.duration6,
    ),
    ModelVideo(
      title: VideosData.title7,
      image: VideosData.image7,
      url: VideosData.url7,
      duration: VideosData.duration7,
    ),
    ModelVideo(
      title: VideosData.title8,
      image: VideosData.image8,
      url: VideosData.url8,
      duration: VideosData.duration8,
    ),
    ModelVideo(
      title: VideosData.title9,
      image: VideosData.image9,
      url: VideosData.url9,
      duration: VideosData.duration9,
    ),
  ];

  /// [getLength] return count of videos in list
  int getLength() => videosData.length;

  /// [getAudio] return video by index
  ModelVideo getAudio(int index) => videosData.elementAt(index);
}
