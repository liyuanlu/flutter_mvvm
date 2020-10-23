import 'package:flutter/material.dart';
import 'package:flutter_app/count_page.dart';
import 'package:flutter_app/count_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ListenableProvider<CountViewModel>(
        create: (_) => CountViewModel(),
        child: CountPageNew(),
      ),
    );
  }
}
