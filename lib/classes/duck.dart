import 'package:second_project/classes/bird_mixer.dart';

class Duck with BirdMixer {
  Duck(sound, {required name, image = "question", canFly}) {
    // default value
    // initial
    this.sound = sound;
    this.name = name;
    this.image = image;
    this.canFly = canFly ?? true; // sugar

    // asserts
    assert(this.sound != null);
    assert(this.name != null);
    assert(this.image != null);
    assert(this.canFly != null);
  }

  String? get quack => sound; // closure
}
