import 'package:angola_sustentavel/Player/game_player_sprite.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/services.dart';

class PlayerHuman extends SimplePlayer with ObjectCollision {
  PlayerHuman(Vector2 position)
      : super(
          position: position,
          animation: SimpleDirectionAnimation(
            idleLeft: GameSpriteSheet.playerIdleLeft,
            idleRight: GameSpriteSheet.playerIdleRight,
            runRight: GameSpriteSheet.playerRunRight,
            runLeft: GameSpriteSheet.playerRunLeft,
          ),
          speed: 60,
          width: 32,
          height: 32,
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: const Size(20, 20),
            align: Vector2(6, 12),
          ),
        ],
      ),
    );
  }

  @override
  void joystickAction(JoystickActionEvent event) {
    if (event.event == ActionEvent.DOWN && event.id == 1 ||
        event.id == LogicalKeyboardKey.space.keyId) {
      _executeAttack();
    }
    super.joystickAction(event);
  }

  void _executeAttack() {
    simpleAttackMelee(
      damage: 20,
      sizePush: 0,
      animationLeft: GameSpriteSheet.pickingLeft,
      animationDown: GameSpriteSheet.pickingBottom,
      animationRight: GameSpriteSheet.pickingRight,
      animationUp: GameSpriteSheet.pickingTop,
      height: 12 * 1.5,
      width: 12 * 1.5,
    );
  }
}
