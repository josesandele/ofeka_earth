import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenuGame extends StatefulWidget {
  const MenuGame({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MenuGameState createState() => _MenuGameState();
}

class _MenuGameState extends State<MenuGame> with WidgetsBindingObserver {
  late String _backgroundImage;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    WidgetsBinding.instance.addObserver(this);
    _setBackgroundImage();
  }

  void _setBackgroundImage() {
    if (Platform.isWindows || Platform.isMacOS) {
      _backgroundImage = 'assets/menupagegame_windows.png';
    } else {
      _backgroundImage = 'assets/menupagegame.png';
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Container(
              margin: const EdgeInsets.only(top: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 32,
                    width: 109,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/level01');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor:
                            const Color.fromARGB(255, 255, 192, 17),
                      ),
                      child: const Text(
                        "Play",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 32,
                    width: 109,
                    child: ElevatedButton(
                      onPressed: () {
                        // Adicione a navegação para as opções
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor:
                            const Color.fromARGB(255, 255, 192, 17),
                      ),
                      child: const Text(
                        "Options",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 32,
                    width: 109,
                    child: ElevatedButton(
                      onPressed: () {
                        exit(0);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor:
                            const Color.fromARGB(255, 255, 192, 17),
                      ),
                      child: const Text(
                        "Quit",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
