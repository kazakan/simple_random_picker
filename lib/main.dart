import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './ElementListControl.dart';
import './AddBar.dart';
import './ResultBar.dart';
import './ElementListView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final controller = Get.put(ElementListControl());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Simple Random Picker',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Random Picker'),
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500),
            child: Column(
              children: <Widget>[
                ResultBar(),
                AddBar(),
                Divider(),
                Expanded(flex: 1, child: ElementListView()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
