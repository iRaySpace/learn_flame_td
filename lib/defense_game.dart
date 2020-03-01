import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/gestures.dart';
import 'package:learn_flame_td/core/enemy_system.dart';
import 'package:learn_flame_td/core/tower_system.dart';
import 'package:learn_flame_td/entities/tower_entity.dart';
import 'package:learn_flame_td/entities/enemy_entity.dart';

class DefenseGame extends Game with TapDetector {
  DefenseGame() {
    _towerSystem = TowerSystem();
    _enemySystem = EnemySystem();
    _init();
  }

  TowerSystem _towerSystem;
  EnemySystem _enemySystem;
  EnemyEntity _enemyEntity;

  void _init() {
    _enemyEntity = EnemyEntity(50.0, 50.0);
    _enemySystem.addNewEnemy(_enemyEntity);
  }

  @override
  void render(Canvas canvas) {
    _towerSystem.render(canvas);
    _enemySystem.render(canvas);
  }

  @override
  void update(double t) {
    _towerSystem.update(t);
  }

  @override
  void onTapDown(TapDownDetails details) {
    final x = details.globalPosition.dx;
    final y = details.globalPosition.dy;
    
    final towerEntity = TowerEntity(x.roundToDouble(), y.roundToDouble());
    towerEntity.target(_enemyEntity);

    _towerSystem.addNewTower(towerEntity);
  }
}
