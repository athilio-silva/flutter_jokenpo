import 'package:flutter/material.dart';
import 'package:flutter_jokenpo_v2/home/enums/gestures_enum.dart';
import 'package:flutter_jokenpo_v2/home/home_controler.dart';
import 'package:flutter_jokenpo_v2/home/widgets/gesture.dart';
import 'package:flutter_jokenpo_v2/home/widgets/popup.dart';

class HomePage extends StatefulWidget {
  final HomeControler controller;
  const HomePage({super.key, required this.controller});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JoKenPo'),
      ),
      body: ListenableBuilder(
          listenable: widget.controller,
          builder: (BuildContext context, Widget? child) {
            return Center(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0, bottom: 30.0),
                        child: widget.controller.optionComputer ==
                                GestureEnum.rock
                            ? Image.asset('assets/images/pedra.png')
                            : widget.controller.optionComputer ==
                                    GestureEnum.paper
                                ? Image.asset('assets/images/papel.png')
                                : widget.controller.optionComputer ==
                                        GestureEnum.scissors
                                    ? Image.asset('assets/images/tesoura.png')
                                    : Image.asset('assets/images/padrao.png'),
                      ),
                      const Text(
                        'Escolha uma opção abaixo',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Gesture(
                              pathImage: 'assets/images/pedra.png',
                              optionSelected: () => widget.controller
                                  .startGame(GestureEnum.rock)),
                          Gesture(
                              pathImage: 'assets/images/papel.png',
                              optionSelected: () => widget.controller
                                  .startGame(GestureEnum.paper)),
                          Gesture(
                              pathImage: 'assets/images/tesoura.png',
                              optionSelected: () => widget.controller
                                  .startGame(GestureEnum.scissors)),
                        ],
                      ),
                    ],
                  ),
                  Visibility(
                    visible: widget.controller.showPopup,
                    child: Popup(
                      homeControler: widget.controller,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
