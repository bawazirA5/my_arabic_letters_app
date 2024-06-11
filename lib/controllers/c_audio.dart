import 'package:my_arabic_letters_app/constant/audios_data.dart';
import 'package:my_arabic_letters_app/models/m_audio.dart';

class ControllerAudio {
  // * list of audios data
  List<ModelAudio> audiosData = [
    ModelAudio(
      name: AudiosData.name1,
      audio: AudiosData.audio1,
    ),
    ModelAudio(
      name: AudiosData.name2,
      audio: AudiosData.audio2,
    ),
    ModelAudio(
      name: AudiosData.name3,
      audio: AudiosData.audio3,
    ),
    ModelAudio(
      name: AudiosData.name4,
      audio: AudiosData.audio4,
    ),
    ModelAudio(
      name: AudiosData.name5,
      audio: AudiosData.audio5,
    ),
    ModelAudio(
      name: AudiosData.name6,
      audio: AudiosData.audio6,
    ),
    ModelAudio(
      name: AudiosData.name7,
      audio: AudiosData.audio7,
    ),
    ModelAudio(
      name: AudiosData.name8,
      audio: AudiosData.audio8,
    ),
    ModelAudio(
      name: AudiosData.name9,
      audio: AudiosData.audio9,
    ),
    ModelAudio(
      name: AudiosData.name10,
      audio: AudiosData.audio10,
    ),
    ModelAudio(
      name: AudiosData.name11,
      audio: AudiosData.audio11,
    ),
    ModelAudio(
      name: AudiosData.name12,
      audio: AudiosData.audio12,
    ),
    ModelAudio(
      name: AudiosData.name13,
      audio: AudiosData.audio13,
    ),
    ModelAudio(
      name: AudiosData.name14,
      audio: AudiosData.audio14,
    ),
    ModelAudio(
      name: AudiosData.name15,
      audio: AudiosData.audio15,
    ),
    ModelAudio(
      name: AudiosData.name16,
      audio: AudiosData.audio16,
    ),
    ModelAudio(
      name: AudiosData.name17,
      audio: AudiosData.audio17,
    ),
    ModelAudio(
      name: AudiosData.name18,
      audio: AudiosData.audio18,
    ),
    ModelAudio(
      name: AudiosData.name19,
      audio: AudiosData.audio19,
    ),
    ModelAudio(
      name: AudiosData.name20,
      audio: AudiosData.audio20,
    ),
    ModelAudio(
      name: AudiosData.name21,
      audio: AudiosData.audio21,
    ),
    ModelAudio(
      name: AudiosData.name22,
      audio: AudiosData.audio22,
    ),
    ModelAudio(
      name: AudiosData.name23,
      audio: AudiosData.audio23,
    ),
    ModelAudio(
      name: AudiosData.name24,
      audio: AudiosData.audio24,
    ),
    ModelAudio(
      name: AudiosData.name25,
      audio: AudiosData.audio25,
    ),
    ModelAudio(
      name: AudiosData.name26,
      audio: AudiosData.audio26,
    ),
    ModelAudio(
      name: AudiosData.name27,
      audio: AudiosData.audio27,
    ),
    ModelAudio(
      name: AudiosData.name28,
      audio: AudiosData.audio28,
    ),
  ];

  /// [getAudio] return audio by index
  ModelAudio getAudio(int index) => audiosData.elementAt(index);
}
