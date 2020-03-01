import 'package:flame/position.dart';
import 'package:flutter/material.dart';
import 'package:learn_flame_td/core/entity.dart';


class EnemyEntity extends Entity {
  EnemyEntity(x, y, { health = 100.0 }) {
    this.setByPosition(Position(x, y));
    this.setBySize(Position(30.0, 30.0));
    this._health = health;
  }

  double _health;
  bool get isNotDead => _health > 0;

  @override
  void render(Canvas canvas) {
    if (isNotDead == true) {
      super.render(canvas);
    }
  }

  void attacked(double damage) {
    if (isNotDead == true) {
      _health = _health - damage;
    }
  }
}
