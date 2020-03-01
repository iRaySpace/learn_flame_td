import 'dart:ui';
import 'package:flame/position.dart';
import 'package:learn_flame_td/core/entity.dart';
import 'package:learn_flame_td/entities/enemy_entity.dart';

class TowerEntity extends Entity {
  TowerEntity(x, y, { damage = 10.0 }) {
    this.setByPosition(Position(x, y));
    this.setBySize(Position(30.0, 30.0));
    this._damage = damage;
  }
  
  double _damage;
  double _cooldown = 5.0;
  EnemyEntity _targetEnemy;

  @override
  void render(Canvas canvas) {
    super.render(canvas);
  }

  @override
  void update(double t) {
    if (_cooldown < 0) {
      _attack();
      _setCooldown();
    } else {
      _cooldown = _cooldown - t;
    }
  }

  void target(EnemyEntity enemy) {
    _targetEnemy = enemy; 
  }

  void _setCooldown() {
    _cooldown = 5.0;
  }

  void _attack() {
    print('attacking');
    _targetEnemy?.attacked(_damage);
  }
}
