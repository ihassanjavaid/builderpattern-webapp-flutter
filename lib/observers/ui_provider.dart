import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ButtonState extends ChangeNotifier {
  Color _buttonOneColor = Colors.white;
  Color _buttonTwoColor = Colors.white;
  Color _buttonThreeColor = Colors.white;
  Color _buttonFourColor = Colors.white;

  Color get buttonOneColor => _buttonOneColor;
  Color get buttonTwoColor => _buttonTwoColor;
  Color get buttonThreeColor => _buttonThreeColor;
  Color get buttonFourColor => _buttonFourColor;

  void selectButton(int button) {
    switch (button) {
      case 1:
        _buttonOneColor = Colors.grey;
        _buttonTwoColor = Colors.white;
        _buttonThreeColor = Colors.white;
        _buttonFourColor = Colors.white;
        break;

      case 2:
        _buttonOneColor = Colors.white;
        _buttonTwoColor = Colors.grey;
        _buttonThreeColor = Colors.white;
        _buttonFourColor = Colors.white;
        break;

      case 3:
        _buttonOneColor = Colors.white;
        _buttonTwoColor = Colors.white;
        _buttonThreeColor = Colors.grey;
        _buttonFourColor = Colors.white;
        break;

      case 4:
        _buttonOneColor = Colors.white;
        _buttonTwoColor = Colors.white;
        _buttonThreeColor = Colors.white;
        _buttonFourColor = Colors.grey;
        break;

      default:
        print('Wrong.');
        break;
    }

    notifyListeners();
  }
}
