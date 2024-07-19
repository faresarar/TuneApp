import 'package:flutter/material.dart';
import 'package:tune_app/widgets/tune_item.dart';

class TuneScreen extends StatelessWidget {
  const TuneScreen({super.key});
  final List<Color> tuneColors = const [
    Color(0xffF44336),
    Color(0xffF89800),
    Color(0xffFEEB3B),
    Color(0xff4CAF50),
    Color(0xff2896F3),
    Color(0xff9C27B0),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // to make appbar without shadows
        backgroundColor: const Color(0xff253238),
        title: const Text("Flutter Tune "),
        centerTitle: true,
      ),
      body: Column(children: getTuneItems()),
    );
  }

  List<TuneItem> getTuneItems() {
    List<TuneItem> items = [];
    for (var color in tuneColors) {
      items.add(TuneItem(color: color));
    }
    return items;
  }
}
