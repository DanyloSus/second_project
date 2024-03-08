import 'package:second_project/classes/bird_mixer.dart';

class Duck with BirdMixer {
  Duck(sound, {required name, image = "question", canFly}) {
    this.sound = sound;
    this.name = name;
    this.image = image;
    this.canFly = canFly ?? true;
  }

  String? get quack => sound;
}
