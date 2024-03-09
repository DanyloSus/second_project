import '../classes/bird_factory.dart';
import '../classes/duck.dart';

BirdFactory birdFactory = BirdFactory();

List<Duck> duckArray = [
  birdFactory.createDuck("Quack", name: "Mallard Duck", image: "mallard"),
  birdFactory.createDuck("Squik",
      name: "Rubber Duck", canFly: false, image: "rubber"),
  birdFactory.createDuck("nothing...",
      name: "Wooden Duck", canFly: false, image: "wooden"),
  birdFactory.createGoose("Honk", name: "Goose")
];
