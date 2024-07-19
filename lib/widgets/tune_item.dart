import 'package:flutter/cupertino.dart';
import 'package:tune_app/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tuneModel});
  final TuneModel tuneModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      /// Do not put Expanded inside GestureDetector
      child: GestureDetector(
        onTap: () {
          tuneModel.playSound();
        },
        child: Container(
          height: 100,
          color: tuneModel.color,
        ),
      ),
    );
  }
}
