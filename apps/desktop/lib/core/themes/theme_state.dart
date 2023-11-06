part of 'theme_bloc.dart';
 
class ThemeState {
  final AccentColor color;
  final ThemeMode mode;
  final PaneDisplayMode displayMode;
  final NavigationIndicators indicator;
  final WindowEffect windowEffect;
  final TextDirection textDirection;
  final Locale? locale;

  ThemeState({
    required this.color,
    required this.mode,
    required this.displayMode,
    required this.indicator,
    required this.windowEffect,
    required this.textDirection,
    this.locale,
  });

  ThemeState copyWith({
    AccentColor? color,
    ThemeMode? mode,
    PaneDisplayMode? displayMode,
    NavigationIndicators? indicator,
    WindowEffect? windowEffect,
    TextDirection? textDirection,
    Locale? locale,
  }) {
    return ThemeState(
      color: color ?? this.color,
      mode: mode ?? this.mode,
      displayMode: displayMode ?? this.displayMode,
      indicator: indicator ?? this.indicator,
      windowEffect: windowEffect ?? this.windowEffect,
      textDirection: textDirection ?? this.textDirection,
      locale: locale ?? this.locale,
    );
  }
}
