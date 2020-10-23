import 'package:flutter/material.dart';

import 'base_view_model.dart';

/// Created by Holo
/// On 2020.10.23
abstract class BaseState<V extends StatefulWidget,VM extends BaseViewModel> extends State<V>{

  VM viewModel;

  VM createViewModel();

  Widget createWidget();

  @override
  Widget build(BuildContext context) {
    if(viewModel == null){
      viewModel = createViewModel();
      viewModel.init();
    }
    return createWidget();
  }
}

// ignore: must_be_immutable
abstract class BasePage<VM extends BaseViewModel> extends StatelessWidget{

  VM viewModel;

  VM createViewModel(BuildContext context);

  Widget createWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if(viewModel == null){
      viewModel = createViewModel(context);
      viewModel.init();
    }
    return createWidget(context);
  }
}