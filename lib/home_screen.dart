import 'package:flutter/material.dart';
import 'package:uis/widgets/first_container.dart';
import 'package:uis/widgets/sec_container.dart';
import 'package:uis/widgets/third_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FirstContainer(),
          SecContainer(),
          ThirdContainer(),
        ],
      ),
    );
  }
}


