import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:system_theme/system_theme.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState(
          color: systemAccentColor,
          mode: ThemeMode.system,
          displayMode: PaneDisplayMode.compact,
          indicator: NavigationIndicators.sticky,
          windowEffect: WindowEffect.disabled,
          textDirection: TextDirection.ltr,
        )) {
    on<ThemeColorChanged>((event, emit) {
      emit(state.copyWith(color: event.color));
    });

    on<ThemeModeChanged>((event, emit) {
      emit(state.copyWith(mode: event.mode));
    });

    on<ThemeDisplayModeChanged>((event, emit) {
      emit(state.copyWith(displayMode: event.displayMode));
    });

    on<ThemeIndicatorChanged>((event, emit) {
      emit(state.copyWith(indicator: event.indicator));
    });

    on<ThemeWindowEffectChanged>((event, emit) {
      emit(state.copyWith(windowEffect: event.windowEffect));
    });

    on<ThemeTextDirectionChanged>((event, emit) {
      emit(state.copyWith(textDirection: event.textDirection));
    });

    on<ThemeLocaleChanged>((event, emit) {
      emit(state.copyWith(locale: event.locale));
    });
  }
}

AccentColor get systemAccentColor {
  if ((defaultTargetPlatform == TargetPlatform.windows ||
          defaultTargetPlatform == TargetPlatform.android) &&
      !kIsWeb) {
    return AccentColor.swatch({
      'darkest': SystemTheme.accentColor.darkest,
      'darker': SystemTheme.accentColor.darker,
      'dark': SystemTheme.accentColor.dark,
      'normal': SystemTheme.accentColor.accent,
      'light': SystemTheme.accentColor.light,
      'lighter': SystemTheme.accentColor.lighter,
      'lightest': SystemTheme.accentColor.lightest,
    });
  }
  return Colors.blue;
}

enum NavigationIndicators { sticky, end }
