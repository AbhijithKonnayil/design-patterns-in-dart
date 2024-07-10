import 'package:design_patterns_in_dart/creational_design_patterns/abstract_factory/example/light_dart_theme/ui_component.dart';

abstract class ThemeFactory {
  Button createButton();
}

class LightThemeFactory implements ThemeFactory {
  @override
  LightButton createButton() => LightButton();
}

class DarkThemeFactory implements ThemeFactory {
  @override
  DarkButton createButton() => DarkButton();
}
