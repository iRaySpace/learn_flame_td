import 'dart:ui';
import 'package:learn_flame_td/entities/tower_entity.dart';

class TowerSystem {
  TowerSystem() : _towers = [];
  
  final List<TowerEntity> _towers;

  void addNewTower(TowerEntity tower) {
    _towers.add(tower);
  }

  void render(Canvas canvas) {
    _towers.forEach((tower) => tower.render(canvas));
  }

  void update(double t) {
    _towers.forEach((tower) => tower.update(t));
  }
}
