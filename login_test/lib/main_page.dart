import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MaterialColor color1 = Colors.red;
  MaterialColor color2 = Colors.blue;
  MaterialColor color3 = Colors.green;
  MaterialColor color4 = Colors.orange;
  MaterialColor color5 = Colors.orange;
  MaterialColor color6 = Colors.orange;
  MaterialColor color7 = Colors.orange;
  MaterialColor color8 = Colors.orange;
  MaterialColor color9 = Colors.orange;
  MaterialColor color10 = Colors.orange;
  MaterialColor color11 = Colors.orange;
  MaterialColor color12 = Colors.orange;
  MaterialColor color13 = Colors.orange;
  MaterialColor color14 = Colors.orange;
  MaterialColor color15 = Colors.orange;
  MaterialColor color16 = Colors.orange;

  Timer? myTimer;

  List<MaterialColor> listOfColors = [
    Colors.amber,
    Colors.red,
    Colors.teal,
    Colors.yellow,
    Colors.pink,
    Colors.purple,
    Colors.green,
    Colors.grey,
    Colors.lime,
    Colors.cyan,
    Colors.blue,
    Colors.brown,
  ];
  Random random = Random();

  void startTimer() {
    myTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      color1 = listOfColors[random.nextInt(12)];
      color2 = listOfColors[random.nextInt(12)];
      color3 = listOfColors[random.nextInt(12)];
      color4 = listOfColors[random.nextInt(12)];
      color6 = listOfColors[random.nextInt(12)];
      color7 = listOfColors[random.nextInt(12)];
      color8 = listOfColors[random.nextInt(12)];
      color9 = listOfColors[random.nextInt(12)];
      color10 = listOfColors[random.nextInt(12)];
      color11 = listOfColors[random.nextInt(12)];
      color12 = listOfColors[random.nextInt(12)];
      color13 = listOfColors[random.nextInt(12)];
      color14 = listOfColors[random.nextInt(12)];
      color15 = listOfColors[random.nextInt(12)];
      color16 = listOfColors[random.nextInt(12)];

      setState(() {});
    });
  }

  @override
  void dispose() {
    myTimer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Omar"), actions: [
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () {
            startTimer();
          },
        ),
      ]),
      body: Row(
        children: [
          myColumn(color1, color2, color3, color4),
          myColumn(color5, color6, color7, color8),
          myColumn(color9, color10, color11, color12),
          myColumn(color13, color14, color15, color16)
        ],
      ),
    );
  }

  Widget myColumn(Color color1, Color color2, Color color3, Color color4) {
    return Expanded(
      child: Column(
        children: [
          cell(color1),
          cell(color2),
          cell(color3),
          cell(color4),
        ],
      ),
    );
  }

  Widget cell(Color color) {
    return Expanded(
      child: Container(
        color: color,
      ),
    );
  }
}
