import 'package:flutter/material.dart';
import 'package:flutter_app/mvvm/base_model.dart';

/// Created by Holo
/// On 2020.10.23
abstract class BaseViewModel<M extends BaseModel> extends ChangeNotifier{

  M model;

  M createModel();

  void init(){
    model = createModel();
  }

}