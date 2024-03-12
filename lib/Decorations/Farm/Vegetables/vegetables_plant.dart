import 'dart:math';

import 'package:angola_sustentavel/Decorations/decoration_sprite_sheet.dart';
import 'package:angola_sustentavel/Player/player_human.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

class TomatoPlant extends GameDecoration with TapGesture {
  Sprite? tomato;

  TomatoPlant(Vector2 position)
      : super.withSprite(
          DecorationSpriteSheet.tomatoplant,
          position: position,
          height: 38,
          width: 32,
        );

  @override
  void onTap() {
    gameRef.add(TomatoCollect(position.center.toVector2().translate(12, 0)));
  }

  @override
  void onTapCancel() {}

  @override
  void onTapDown(int pointer, Offset position) {}

  @override
  void onTapUp(int pointer, Offset position) {}
}

class PepperPlant extends GameDecoration with TapGesture {
  Sprite? papper;

  PepperPlant(Vector2 position)
      : super.withSprite(
          DecorationSpriteSheet.pepperplant,
          position: position,
          height: 36,
          width: 32,
        );

  @override
  void onTap() {
    gameRef
        .add(PepperCollectable(position.center.toVector2().translate(12, 0)));
  }

  @override
  void onTapCancel() {}

  @override
  void onTapDown(int pointer, Offset position) {}

  @override
  void onTapUp(int pointer, Offset position) {}
}

class CornPlant extends GameDecoration with TapGesture {
  Sprite? corn;

  CornPlant(Vector2 position)
      : super.withSprite(
          DecorationSpriteSheet.cornplant,
          position: position,
          height: 32,
          width: 16,
        );

  @override
  void onTap() {
    gameRef.add(CornCollactable(position.center.toVector2().translate(12, 0)));
  }

  @override
  void onTapCancel() {}

  @override
  void onTapDown(int pointer, Offset position) {}

  @override
  void onTapUp(int pointer, Offset position) {}
}

//Vegetables Collectables

class TomatoCollect extends GameDecoration with Sensor {
  TomatoCollect(Vector2 position)
      : super.withSprite(
          DecorationSpriteSheet.tomatovegetable,
          position: position,
          height: 13,
          width: 12,
        );

  @override
  void onContact(GameComponent component) {
    if (component is PlayerHuman) {
      removeFromParent();
    }
  }

  @override
  void onMount() {
    final initialPosition = position.translate(0, 12 / -2);
    final deslocamentoX = 12 * Random().nextDouble();
    final deslocamentoY = 12 / 2 * Random().nextDouble();
    gameRef.getValueGenerator(
      const Duration(microseconds: 500),
      onChange: (value) {
        double newX = Curves.decelerate.transform(value);
        double newY = Curves.bounceInOut.transform(value);
        position = initialPosition.translate(
          deslocamentoX * newX,
          deslocamentoY * newY,
        );
      },
    ).start();
    super.onMount();
  }
}

class CornCollactable extends GameDecoration with Sensor {
  CornCollactable(Vector2 position)
      : super.withSprite(
          DecorationSpriteSheet.cornvegetable,
          position: position,
          height: 17,
          width: 12,
        );

  @override
  void onContact(GameComponent component) {
    if (component is PlayerHuman) {
      removeFromParent();
    }
  }

  @override
  void onMount() {
    final initialPosition = position.translate(0, 12 / -2);
    final deslocamentoX = 12 * Random().nextDouble();
    final deslocamentoY = 12 / 2 * Random().nextDouble();
    gameRef.getValueGenerator(
      const Duration(microseconds: 500),
      onChange: (value) {
        double newX = Curves.decelerate.transform(value);
        double newY = Curves.bounceInOut.transform(value);
        position = initialPosition.translate(
          deslocamentoX * newX,
          deslocamentoY * newY,
        );
      },
    ).start();
    super.onMount();
  }
}

class PepperCollectable extends GameDecoration with Sensor {
  PepperCollectable(Vector2 position)
      : super.withSprite(
          DecorationSpriteSheet.peppervegetable,
          position: position,
          height: 11,
          width: 13,
        );

  @override
  void onContact(GameComponent component) {
    if (component is PlayerHuman) {
      removeFromParent();
    }
  }

  @override
  void onMount() {
    final initialPosition = position.translate(0, 12 / -4);
    final deslocamentoX = 12 * Random().nextDouble();
    final deslocamentoY = 24 / 2 * Random().nextDouble();
    gameRef.getValueGenerator(
      const Duration(microseconds: 500),
      onChange: (value) {
        double newX = Curves.decelerate.transform(value);
        double newY = Curves.bounceInOut.transform(value);
        position = initialPosition.translate(
          deslocamentoX * newX,
          deslocamentoY * newY,
        );
      },
    ).start();
    super.onMount();
  }
}
