import 'package:second_project/classes/bird_mixer.dart';

class Duck with BirdMixer {
  factory Duck(sound, {required name, image = "question", canFly}) {
    if (name == "duck" || name == "Duck") {
      throw ArgumentError("Duck has its type ;<");
    }

    return Duck._internal(sound, name: name, image: image, canFly: canFly);
  }

  Duck._internal(sound, {required name, image = "question", canFly}) {
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

  Function quack(String message) {
    return (String byWho) => "$byWho says: $message";
  }

  Function countOfQuacks() {
    int i = 0;
    return () => i + 1;
  } // closure
}
