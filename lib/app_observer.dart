import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log('[BLoC Event] ${bloc.runtimeType}: $event', name: 'AppObserver');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('[BLoC Change] ${bloc.runtimeType}: $change', name: 'AppObserver');
  }
}
