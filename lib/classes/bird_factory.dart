import 'package:second_project/classes/duck.dart';
import 'package:second_project/classes/goose.dart';
import 'package:second_project/classes/goose_adapter.dart';

// factory
class BirdFactory {
  Duck createDuck(sound, {required name, image = "question", canFly}) {
    // default value
    return Duck(sound, name: name, image: image, canFly: canFly);
  }

  Duck createGoose(sound, {required name, image = "question", canFly}) {
    // default value
    return GooseAdapter(
        Goose(sound, name: name, image: image, canFly: canFly), sound,
        name: name);
  }
}
