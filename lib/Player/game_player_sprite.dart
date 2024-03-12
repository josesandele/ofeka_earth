import 'package:bonfire/bonfire.dart';

class GameSpriteSheet {
  //Idle Moviment
  static Future<SpriteAnimation> get playerIdleLeft => SpriteAnimation.load(
        'ngolap.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(96, 96),
            texturePosition: Vector2(384, 0)),
      );

  static Future<SpriteAnimation> get playerIdleRight => SpriteAnimation.load(
        'ngolap.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(96, 96),
            texturePosition: Vector2(0, 0)),
      );

  static Future<SpriteAnimation> get playerRunRight => SpriteAnimation.load(
        'ngolap.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(96, 96),
            texturePosition: Vector2(0, 192)),
      );

  static Future<SpriteAnimation> get playerRunLeft => SpriteAnimation.load(
        'ngolap.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(96, 96),
            texturePosition: Vector2(384, 192)),
      );

  //Picking: here we use a Pickaxe to plant trees and collect alliments from
  //the farm
  static Future<SpriteAnimation> get pickingLeft => SpriteAnimation.load(
        'atack_effect_left.png',
        SpriteAnimationData.sequenced(
            amount: 3, stepTime: 0.1, textureSize: Vector2(16, 16)),
      );

  //pickingRight
  static Future<SpriteAnimation> get pickingRight => SpriteAnimation.load(
        'atack_effect_right.png',
        SpriteAnimationData.sequenced(
            amount: 3, stepTime: 0.1, textureSize: Vector2(16, 16)),
      );

  //pickingBotton
  static Future<SpriteAnimation> get pickingBottom => SpriteAnimation.load(
        'atack_effect_bottom.png',
        SpriteAnimationData.sequenced(
            amount: 3, stepTime: 0.1, textureSize: Vector2(16, 16)),
      );

  //pickingTop
  static Future<SpriteAnimation> get pickingTop => SpriteAnimation.load(
        'atack_effect_top.png',
        SpriteAnimationData.sequenced(
            amount: 3, stepTime: 0.1, textureSize: Vector2(16, 16)),
      );
}
