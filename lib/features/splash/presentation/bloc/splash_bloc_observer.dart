import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    log('-> Change in ${bloc.runtimeType}: $change');
    super.onChange(bloc, change);
  }
}
