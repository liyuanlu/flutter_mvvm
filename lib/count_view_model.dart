import 'package:flutter_app/count_model.dart';
import 'package:flutter_app/mvvm/base_view_model.dart';

class CountViewModel extends BaseViewModel<CountModel>{

  int count = 0;

  @override
  CountModel createModel() => CountModel();

  void increment(){
    count = model.increment();
    print(count);
    notifyListeners();
  }

}