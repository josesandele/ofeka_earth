import 'package:angola_sustentavel/Decorations/Farm/Vegetables/vegetables_plant.dart';
import 'package:angola_sustentavel/Decorations/TrashObjects/trash_river_collect.dart';
import 'package:angola_sustentavel/Decorations/reforestation.dart';
import 'package:angola_sustentavel/NPCS/ngola_friends.dart';
import 'package:angola_sustentavel/Player/player_human.dart';
import 'package:angola_sustentavel/interface/player_interface.dart';
import 'package:angola_sustentavel/splach_screen_game.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

const double tileSize = 12;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplachScreenGame(),
      routes: {
        '/level01': (context) => const MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // void onPressed() async {
  //   FlameAudio.loop('wildssound.mp3');
  // }

  @override
  Widget build(BuildContext context) {
    // FlameAudio.loop('wildssound.mp3');
    // onPressed();
    return BonfireTiledWidget(
      // joystick: JoystickMoveToPosition(),
      joystick: Joystick(
        directional: JoystickDirectional(color: Colors.black),
        actions: [
          JoystickAction(
            actionId: 1,
            color: Colors.white,
            margin: const EdgeInsets.all(40),
          ),
        ],
        keyboardConfig: KeyboardConfig(
          keyboardDirectionalType: KeyboardDirectionalType.arrows,
        ),
      ),
      map: TiledWorldMap(
        'map/mundo.json',
        forceTileSize: const Size(tileSize, tileSize),
        objectsBuilder: {
          //NPCs
          'ngolafriends': (properties) => NgonaFriends(properties.position),
          //TreesCollectables
          'treestem': (properties) => ReforestationTrees(properties.position),
          //TrachaGameObjects
          'trash': (properties) => TrashCollectables(properties.position),
          'trash02': (properties) => TrashCollectables02(properties.position),
          'trash03': (properties) => TrashCollectables03(properties.position),
          'trash04': (properties) => TrashCollectables04(properties.position),
          'trash05': (properties) => TrashCollectables05(properties.position),
          'trash06': (properties) => TrashCollectables06(properties.position),
          'trash07': (properties) => TrashCollectables07(properties.position),
          'trash08': (properties) => TrashCollectables08(properties.position),
          'trash09': (properties) => TrashCollectables09(properties.position),
          'trash10': (properties) => TrashCollectables10(properties.position),
          'trash11': (properties) => TrashCollectables11(properties.position),
          'trash12': (properties) => TrashCollectables12(properties.position),
          //GarbageColactbleIcone
          'garbage': (properties) => TrashCollectables17(properties.position),
          'trash18': (properties) => TrashCollectables18(properties.position),
          'trash19': (properties) => TrashCollectables19(properties.position),
          'trash20': (properties) => TrashCollectables20(properties.position),
          //Farm Objects
          'tomato_plant': (properties) => TomatoPlant(properties.position),
          'pepper_plant': (properties) => PepperPlant(properties.position),
          'corn_plant': (properties) => CornPlant(properties.position),
          //Farm Vegetables Products Collectables
          'tomato_collect': (properties) => TomatoCollect(properties.position),
        },
      ),
      player: PlayerHuman(
        Vector2(16 * tileSize, 46 * tileSize),
      ),
      overlayBuilderMap: {
        PlayerInterface.overlayKey: (context, game) => PlayerInterface(
              game: game,
            ),
      },
      initialActiveOverlays: const [
        PlayerInterface.overlayKey,
      ],
      cameraConfig: CameraConfig(
        moveOnlyMapArea: true,
        sizeMovementWindow: const Size(tileSize * 3, tileSize * 3),
        zoom: 1.5,
      ),
      // showCollisionArea: true,
    );
  }
}
