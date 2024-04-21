import 'package:flutter/material.dart';
import 'package:tune/models/tune_item_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tune});
  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSunde();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
