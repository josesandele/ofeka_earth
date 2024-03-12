import 'package:bonfire/base/bonfire_game.dart';
import 'package:flutter/material.dart';
import 'dart:async' as async;

class PlayerInterface extends StatefulWidget {
  static const overlayKey = 'playerInterface';
  final BonfireGame game;
  const PlayerInterface({Key? key, required this.game}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PlayerInterfaceState createState() => _PlayerInterfaceState();
}

class _PlayerInterfaceState extends State<PlayerInterface> {
  double life = 0;
  double widthCurrent = 100;
  final double widthMax = 100;

  late async.Timer _lifeTime;

  @override
  void initState() {
    _lifeTime =
        async.Timer.periodic(const Duration(microseconds: 100), _verifyLife);
    super.initState();
  }

  @override
  void dispose() {
    _lifeTime.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(80),
              border: Border.all(color: Colors.black),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: widthCurrent,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  void _verifyLife(async.Timer timer) {
    if (life != (widget.game.player?.life ?? 0)) {
      setState(() {
        life = widget.game.player?.life ?? 0;

        final percent = life / (widget.game.player?.maxLife ?? 0);
        widthCurrent = widthMax * percent;
      });
    }
  }
}
