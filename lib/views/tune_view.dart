import 'package:flutter/material.dart';
import 'package:tune/models/tune_item_model.dart';

import '../widget/tune_item.dart';
// import 'package:tune/widget/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xfff24234), sunde: "note1.wav"),
    TuneModel(color: Color(0xfff79700), sunde: "note2.wav"),
    TuneModel(color: Color(0xfffaea3a), sunde: "note3.wav"),
    TuneModel(color: Color(0xff4aae4e), sunde: "note4.wav"),
    TuneModel(color: Color(0xff2d9588), sunde: "note5.wav"),
    TuneModel(color: Color(0xff2997f2), sunde: "note6.wav"),
    TuneModel(color: Color(0xff9b28b0), sunde: "note7.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff243139),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        title: const Text("Flutter Tune"),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItem(tune: e),
            )
            .toList(),
      ),
    );
  }
}
