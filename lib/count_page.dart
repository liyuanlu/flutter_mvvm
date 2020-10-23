import 'package:flutter/material.dart';
import 'package:flutter_app/count_view_model.dart';
import 'package:flutter_app/mvvm/base_page.dart';
import 'package:provider/provider.dart';

class CountPage extends BasePage<CountViewModel>{

  @override
  CountViewModel createViewModel(BuildContext context) => Provider.of<CountViewModel>(context);

  @override
  Widget createWidget(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('MVVM'),),
    body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('${context.watch<CountViewModel>().count}'),
          FlatButton(
            onPressed: viewModel.increment,
            child: Text('+'),
          )
        ],
      ),
    ),
  );

}

class CountPageNew extends StatefulWidget{

  @override
  State createState() => _CountPageNewState();
}

class _CountPageNewState extends BaseState<CountPageNew,CountViewModel>{

  @override
  CountViewModel createViewModel() => Provider.of<CountViewModel>(context);

  @override
  Widget createWidget() => Scaffold(
    appBar: AppBar(title: Text('MVVM'),),
    body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('${context.watch<CountViewModel>().count}'),
          FlatButton(
            onPressed: viewModel.increment,
            child: Text('+'),
          )
        ],
      ),
    ),
  );

}