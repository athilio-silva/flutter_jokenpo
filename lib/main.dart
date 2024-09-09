import 'package:flutter/material.dart';
import 'package:flutter_jokenpo_v2/home/home_controler.dart';
import 'package:flutter_jokenpo_v2/home/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JokenPo',
      home: HomePage(
        controller: HomeControler(),
      ),
    );
  }
}
