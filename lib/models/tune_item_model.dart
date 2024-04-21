import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String sunde;
  const TuneModel({required this.color, required this.sunde});
  void playSunde() {
    final player = AudioPlayer();
    player.play(AssetSource(sunde));
  }
}
