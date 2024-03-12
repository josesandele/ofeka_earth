import 'package:bonfire/bonfire.dart';

class NgolaFriendsSpriteSheet {
  //Idle Moviment
  static Future<SpriteAnimation> get ngolaFriendIdleLeft =>
      SpriteAnimation.load(
        'npcs.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(96, 96),
            texturePosition: Vector2(384, 0)),
      );

  static Future<SpriteAnimation> get ngolaFriendIdleRight =>
      SpriteAnimation.load(
        'npcs.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(96, 96),
            texturePosition: Vector2(384, 0)),
      );

  // static Future<SpriteAnimation> get ngolaFriendRunRight =>
  //     SpriteAnimation.load(
  //       'npcs.png',
  //       SpriteAnimationData.sequenced(
  //           amount: 4,
  //           stepTime: 0.15,
  //           textureSize: Vector2(24, 24),
  //           texturePosition: Vector2(0, 48)),
  //     );

  // static Future<SpriteAnimation> get ngolaFriendRunLeft => SpriteAnimation.load(
  //       'npcs.png',
  //       SpriteAnimationData.sequenced(
  //           amount: 4,
  //           stepTime: 0.15,
  //           textureSize: Vector2(24, 24),
  //           texturePosition: Vector2(96, 48)),
  //     );
}
