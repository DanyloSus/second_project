import 'package:second_project/classes/bird_mixer.dart';

class Duck with BirdMixer {
  Duck(sound, {required name, image = "question", canFly}) {
    this.sound = sound;
    this.name = name;
    this.image = image;
    this.canFly = canFly ?? true;

    assert(sound != null);
    assert(name != null);
    assert(image != null);
    assert(canFly != null);
  }

  String? get quack => sound;
}
