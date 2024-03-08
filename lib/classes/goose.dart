import 'package:second_project/classes/bird_mixer.dart';

class Goose with BirdMixer {
  Goose(sound, {required name, image = "question", canFly}) {
    this.sound = sound;
    this.name = name;
    this.image = image;
    this.canFly = canFly ?? true;
  }

  String? get honk => sound;
}
