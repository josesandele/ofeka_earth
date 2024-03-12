import 'package:angola_sustentavel/NPCS/ngola_friends_sprite_sheet.dart';
import 'package:angola_sustentavel/Player/game_player_sprite.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/widgets.dart';

const double ngolaFriendsSize = 32;

class NgonaFriends extends SimpleEnemy with TapGesture {
  NgonaFriends(Vector2 position)
      : super(
          position: position,
          height: ngolaFriendsSize,
          width: ngolaFriendsSize,
          animation: SimpleDirectionAnimation(
              idleLeft: NgolaFriendsSpriteSheet.ngolaFriendIdleLeft,
              idleRight: NgolaFriendsSpriteSheet.ngolaFriendIdleRight,
              runRight: NgolaFriendsSpriteSheet.ngolaFriendIdleLeft,
              runLeft: NgolaFriendsSpriteSheet.ngolaFriendIdleRight),
        );

  @override
  void onTap() {
    TalkDialog.show(context, [
      Say(
        text: [
          const TextSpan(text: 'Ngola: Mayouma, what brings you here?'),
        ],
        person: SizedBox(
          height: 100,
          width: 100,
          child: GameSpriteSheet.playerIdleRight.asWidget(),
        ),
      ),
      Say(
        text: [
          const TextSpan(
              text:
                  'Mayouma: It is urgent, Ngola. Our village, Iona, faces a serious threat - the relentless onslaught of climate change. Our rivers are drying up, our trees withering away, and our people are in peril.'),
        ],
        person: SizedBox(
          height: 100,
          width: 100,
          child: NgolaFriendsSpriteSheet.ngolaFriendIdleLeft.asWidget(),
        ),
        personSayDirection: PersonSayDirection.RIGHT,
      ),
      Say(
        text: [
          const TextSpan(
              text:
                  'Ngola: Ngola: I sense the unrest in the elements. What must be done?'),
        ],
        person: SizedBox(
          height: 100,
          width: 100,
          child: GameSpriteSheet.playerIdleRight.asWidget(),
        ),
      ),
      Say(
        text: [
          const TextSpan(
              text:
                  'Mayouma: Mayouma: You, Ngola, are our beacon of hope. You must embark on a mission to protect Iona from the ravages of climate change. Plant new trees to restore our forests, revitalize our rivers to ensure our survival, and educate our people about the perils we face.'),
        ],
        person: SizedBox(
          height: 100,
          width: 100,
          child: NgolaFriendsSpriteSheet.ngolaFriendIdleLeft.asWidget(),
        ),
        personSayDirection: PersonSayDirection.RIGHT,
      ),
      Say(
        text: [
          const TextSpan(
              text:
                  'Ngola: I accept this sacred duty. But how can I accomplish such a monumental task alone?'),
        ],
        person: SizedBox(
          height: 100,
          width: 100,
          child: GameSpriteSheet.playerIdleRight.asWidget(),
        ),
      ),
      Say(
        text: [
          const TextSpan(
              text:
                  'Mayouma: You will not be alone, Ngola. The spirits of our ancestors will guide you, and the resilience of our people will support you. Seek out knowledge from the wise, and inspire others to join our cause.'),
        ],
        person: SizedBox(
          height: 100,
          width: 100,
          child: NgolaFriendsSpriteSheet.ngolaFriendIdleLeft.asWidget(),
        ),
        personSayDirection: PersonSayDirection.RIGHT,
      ),
      Say(
        text: [
          const TextSpan(
              text:
                  'Ngola: I shall heed your call, Mayouma. The fate of Iona rests in my hands.'),
        ],
        person: SizedBox(
          height: 100,
          width: 100,
          child: GameSpriteSheet.playerIdleRight.asWidget(),
        ),
      ),
      Say(
        text: [
          const TextSpan(
              text:
                  'Mayouma: Go forth, Ngola, and may the spirits watch over you.'),
        ],
        person: SizedBox(
          height: 100,
          width: 100,
          child: NgolaFriendsSpriteSheet.ngolaFriendIdleLeft.asWidget(),
        ),
        personSayDirection: PersonSayDirection.RIGHT,
      ),
    ]);
  }

  @override
  void onTapCancel() {}

  @override
  void onTapDown(int pointer, Offset position) {}

  @override
  void onTapUp(int pointer, Offset position) {}
}
