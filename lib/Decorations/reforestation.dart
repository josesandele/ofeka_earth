import 'package:angola_sustentavel/Decorations/decoration_sprite_sheet.dart';
import 'package:angola_sustentavel/Player/player_human.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

class ReforestationTrees extends GameDecoration
    with ObjectCollision, TapGesture {
  bool playerIsClose = false;
  static const String messageTree =
      "Tree replaced, Trees are important for the health of the planet. Keep planting and protecting trees for a greener future.";

  Sprite? removeStem, plantTree;

  ReforestationTrees(Vector2 position)
      : super.withSprite(
          DecorationSpriteSheet.removeStem,
          position: position,
          width: 32,
          height: 32,
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: const Size(15, 5),
            align: Vector2(9, 20),
          ),
        ],
      ),
    );
  }

  //GameMecachincs

  @override
  void update(double dt) {
    seeComponentType<PlayerHuman>(
      observed: (player) {
        if (!playerIsClose) {
          playerIsClose = true;
          // _showDialog();
        }
      },
      notObserved: () {
        playerIsClose = false;
      },
      radiusVision: 32,
    );
    super.update(dt);
  }

  @override
  Future<void> onLoad() async {
    plantTree = await DecorationSpriteSheet.plantTree;
    removeStem = await DecorationSpriteSheet.removeStem;
    return super.onLoad();
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: const Text(messageTree),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'))
            ],
          );
        });
  }

  //TouchFunctions
  @override
  void onTap() {
    if (playerIsClose) {
      _showDialog();
      sprite = plantTree;
    }
  }

  @override
  void onTapCancel() {}

  @override
  void onTapDown(int pointer, Offset position) {}

  @override
  void onTapUp(int pointer, Offset position) {}
}
