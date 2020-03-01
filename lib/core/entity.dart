import 'dart:ui';

import 'package:flame/components/component.dart';

class Entity extends PositionComponent {
  @override
  void render(Canvas canvas) {
    canvas.drawRect(toRect(), Paint()..color = debugColor);
  }
  @override
  void update(double t) {}
}
