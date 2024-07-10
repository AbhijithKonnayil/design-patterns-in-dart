import 'dart:convert';
import 'dart:io';

import 'package:design_patterns_in_dart/creational_design_patterns/abstract_factory/example/light_dart_theme/theme.dart';
import 'package:design_patterns_in_dart/creational_design_patterns/abstract_factory/example/light_dart_theme/ui_component.dart';

void main() {
  late ThemeFactory themeFactory;
  stdout.write(
      "Choose theme\n1. Light Theme\n2. Dark Theme\nEnter the choice : ");
  String? input = stdin.readLineSync(encoding: utf8);

  if (input == "1") {
    themeFactory = LightThemeFactory();
  } else if (input == "2") {
    themeFactory = DarkThemeFactory();
  } else {
    throw Exception("Invalid Input");
  }

  Button button = themeFactory.createButton();
  button.render();
}
