import 'package:flutter/material.dart';

class AppTheme {

  static const List<Color> _colorThemes = [Colors.blue, Colors.green, Colors.orange];

  final int _selectedColor;

  AppTheme(this._selectedColor){
    assert(_selectedColor >= 0 && _selectedColor < _colorThemes.length, 'Colors must be between 0 to ${_colorThemes.length}');
  }



  ThemeData theme(){
    return ThemeData(
        useMaterial3: true,
      colorSchemeSeed: _colorThemes[_selectedColor],
      brightness: Brightness.dark
    );
  }
}
