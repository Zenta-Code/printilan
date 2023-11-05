part of 'theme_bloc.dart';

@immutable
sealed class ThemeEvent {}

class ThemeColorChanged extends ThemeEvent {
  final AccentColor color;
  ThemeColorChanged(this.color);
}

class ThemeModeChanged extends ThemeEvent {
  final ThemeMode mode;
  ThemeModeChanged(this.mode);
}

class ThemeDisplayModeChanged extends ThemeEvent {
  final PaneDisplayMode displayMode;
  ThemeDisplayModeChanged(this.displayMode);
}

class ThemeIndicatorChanged extends ThemeEvent {
  final NavigationIndicators indicator;
  ThemeIndicatorChanged(this.indicator);
}

class ThemeWindowEffectChanged extends ThemeEvent {
  final WindowEffect windowEffect;
  ThemeWindowEffectChanged(this.windowEffect);
}

class ThemeTextDirectionChanged extends ThemeEvent {
  final TextDirection textDirection;
  ThemeTextDirectionChanged(this.textDirection);
}

class ThemeLocaleChanged extends ThemeEvent {
  final Locale locale;
  ThemeLocaleChanged(this.locale);
}
