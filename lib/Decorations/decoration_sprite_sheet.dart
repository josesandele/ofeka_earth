import 'package:bonfire/bonfire.dart';

class DecorationSpriteSheet {
  //CollectTrees

  static Future<Sprite> get removeStem => Sprite.load('map/stemtree.png',
      srcPosition: Vector2(32, 96), srcSize: Vector2(32, 32));

  static Future<Sprite> get plantTree => Sprite.load('map/stemtree.png',
      srcPosition: Vector2(96, 0), srcSize: Vector2(96, 128));

  //TrashObjects

  static Future<Sprite> get trashIcones =>
      Sprite.load('map/trashimages/trash01.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(18, 64));

  static Future<Sprite> get trashIcones02 =>
      Sprite.load('map/trashimages/trash02.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(39, 64));

  static Future<Sprite> get trashIcones03 =>
      Sprite.load('map/trashimages/trash03.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(36, 64));

  static Future<Sprite> get trashIcones04 =>
      Sprite.load('map/trashimages/trash04.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(51, 64));

  static Future<Sprite> get trashIcones05 =>
      Sprite.load('map/trashimages/trash05.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(53, 64));

  static Future<Sprite> get trashIcones06 =>
      Sprite.load('map/trashimages/trash06.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(35, 64));

  static Future<Sprite> get trashIcones07 =>
      Sprite.load('map/trashimages/trash07.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(20, 64));

  static Future<Sprite> get trashIcones08 =>
      Sprite.load('map/trashimages/trash08.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(25, 64));

  static Future<Sprite> get trashIcones09 =>
      Sprite.load('map/trashimages/trash09.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(18, 64));

  static Future<Sprite> get trashIcones10 =>
      Sprite.load('map/trashimages/trash10.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(23, 64));

  static Future<Sprite> get trashIcones11 =>
      Sprite.load('map/trashimages/trash11.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(23, 64));

  static Future<Sprite> get trashIcones12 =>
      Sprite.load('map/trashimages/trash12.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(18, 64));

  static Future<Sprite> get trashIcones17 =>
      Sprite.load('map/trashimages/trash17.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(20, 27));

  static Future<Sprite> get trashIcones18 =>
      Sprite.load('map/trashimages/trash18.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(19, 15));

  static Future<Sprite> get trashIcones19 =>
      Sprite.load('map/trashimages/trash19.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(16, 6));

  static Future<Sprite> get trashIcones20 =>
      Sprite.load('map/trashimages/trash20.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(18, 21));

  //Farm Objects Collectable

  static Future<Sprite> get tomatoplant =>
      Sprite.load('map/farm_plants/tomato_plant.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(32, 38));

  static Future<Sprite> get pepperplant =>
      Sprite.load('map/farm_plants/pepper_plant.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(32, 36));

  static Future<Sprite> get cornplant =>
      Sprite.load('map/farm_plants/corn_plant.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(32, 64));

//Vegetables Collectables
  static Future<Sprite> get tomatovegetable =>
      Sprite.load('map/farm_plants/tomato.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(21, 19));

  static Future<Sprite> get cornvegetable =>
      Sprite.load('map/farm_plants/corn.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(27, 22));

  static Future<Sprite> get peppervegetable =>
      Sprite.load('map/farm_plants/pepper.png',
          srcPosition: Vector2(0, 0), srcSize: Vector2(22, 23));
}
