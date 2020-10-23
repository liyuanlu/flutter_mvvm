import 'package:flutter_app/mvvm/base_model.dart';

class CountModel extends BaseModel{

  int _count = 0;

  int increment() => ++_count;

}