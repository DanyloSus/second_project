import 'package:second_project/classes/duck.dart';
import 'package:second_project/classes/goose.dart';

class GooseAdapter extends Duck {
  GooseAdapter(this.goose, sound, {required name}) : super(null, name: null);

  Goose goose;

  @override
  String? get quack => goose.honk;
}
