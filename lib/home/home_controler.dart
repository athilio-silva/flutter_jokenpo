import 'dart:math';

import 'package:flutter/material.dart';

import 'enums/gestures_enum.dart';

class HomeControler extends ChangeNotifier {
  GestureEnum _optionSelected = GestureEnum.none;
  GestureEnum _optionComputer = GestureEnum.none;
  bool _showPopup = false;
  String _message = '';

  get optionSelected => _optionSelected;
  get optionComputer => _optionComputer;
  get showPopup => _showPopup;
  get message => _message;
  
  void setOptionSelected(GestureEnum option) {
    _optionSelected = option;
    notifyListeners();
  }

  void setOptionComputer() {
    const List<GestureEnum> options = [
      GestureEnum.rock,
      GestureEnum.paper,
      GestureEnum.scissors
    ];
    _optionComputer = options[Random().nextInt(options.length)];
    notifyListeners();
  }

  void closePopup() {
    _showPopup = false;
    _message = '';
    _optionComputer = GestureEnum.none;
    _optionSelected = GestureEnum.none;
    notifyListeners();
  }

  void _game() {
    if (_optionSelected == _optionComputer) {
      _message = "Empatamos!";
    } else if (_optionComputer == GestureEnum.rock &&
        _optionSelected == GestureEnum.paper) {
      _message = "Você ganhou!";
    } else if (_optionComputer == GestureEnum.paper &&
        _optionSelected == GestureEnum.scissors) {
      _message = "Você ganhou!";
    } else if (_optionComputer == GestureEnum.scissors &&
        _optionSelected == GestureEnum.rock) {
      _message = "Você ganhou!";
    } else {
      _message = "Você perdeu!";
    }
    _showPopup = true;
    notifyListeners();
  }

  void startGame(GestureEnum option) {
    setOptionComputer();
    setOptionSelected(option);
    _game();
  }
}
