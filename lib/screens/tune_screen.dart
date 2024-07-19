import 'package:flutter/material.dart';
import 'package:tune_app/widgets/tune_item.dart';

class TuneScreen extends StatelessWidget {
  const TuneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0, // to make appbar without shadows
        backgroundColor: Color(0xff253238),
        title: Text("Flutter Tune "),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TuneItem(color: Colors.red),


        ],
      ) ,
    );
  }
}
