import 'dart:ui';
import 'package:learn_flame_td/entities/enemy_entity.dart';

class EnemySystem {
  EnemySystem() : _enemies = [];

  final List<EnemyEntity> _enemies;

  void addNewEnemy(EnemyEntity enemy) {
    _enemies.add(enemy);
  }

  void render(Canvas canvas) {
    _enemies.forEach((enemy) => enemy.render(canvas));
  }
}
