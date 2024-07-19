import 'package:flutter/cupertino.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.color});
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        height: 100,
        color: color,
      ),
    );
  }
}
