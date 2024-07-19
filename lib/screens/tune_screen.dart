import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widgets/tune_item.dart';

class TuneScreen extends StatelessWidget {
  const TuneScreen({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffF44336), sound: "assets/note1.wav"),
    TuneModel(color: Color(0xffF89800), sound: "assets/note2.wav"),
    TuneModel(color: Color(0xffFEEB3B), sound: "assets/note3.wav"),
    TuneModel(color: Color(0xff4CAF50), sound: "assets/note4.wav"),
    TuneModel(color: Color(0xff2896F3), sound: "assets/note5.wav"),
    TuneModel(color: Color(0xff9C27B0), sound: "assets/note6.wav"),
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
      //body: Column(children: getTuneItems()),
      /// or
      body: Column(
          children: tunes
              .map(
                (element) => TuneItem(
                  tuneModel: element,
                ),
              )
              .toList()),
    );
  }

  List<TuneItem> getTuneItems() {
    List<TuneItem> items = [];
    for (var tune in tunes) {
      items.add(
        TuneItem(
          tuneModel: tune,
        ),
      );
    }
    return items;
  }
}
