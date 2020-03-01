import 'package:flutter/material.dart';
import 'package:flame/util.dart';
import 'defense_game.dart';


void main() async {
  runApp(DefenseGame().widget);
  await Util().fullScreen();
  await Util().setLandscape();
}
