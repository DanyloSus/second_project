mixin BirdMixer {
  String? _sound;
  String? _name;
  String? _image;
  bool? _canFly;

  set sound(String? newSound) => _sound = newSound;
  String? get sound => _sound;

  set name(String? newName) => _name = newName;
  String? get name => _name;

  set image(String? newImage) => _image = newImage ?? "question";
  String? get image => _image;

  set canFly(bool? newState) => _canFly = newState;
  bool? get canFly => _canFly;
}
