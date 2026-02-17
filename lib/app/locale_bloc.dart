import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _localeKey = 'app_locale';

class LocaleState {
  final Locale locale;
  const LocaleState(this.locale);
}

sealed class LocaleEvent {}

class LocaleChanged extends LocaleEvent {
  final Locale locale;
  LocaleChanged(this.locale);
}

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  final SharedPreferences _prefs;

  LocaleBloc({required SharedPreferences prefs})
      : _prefs = prefs,
        super(LocaleState(Locale(prefs.getString(_localeKey) ?? 'ru'))) {
    on<LocaleChanged>(_onChanged);
  }

  void _onChanged(LocaleChanged event, Emitter<LocaleState> emit) {
    _prefs.setString(_localeKey, event.locale.languageCode);
    emit(LocaleState(event.locale));
  }
}
