import 'package:bloc/bloc.dart';

import '../utils/log_util.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logMsg("$change", runtimeType: bloc.runtimeType);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logErr("$error $stackTrace", runtimeType: bloc.runtimeType);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    logMsg("$transition", runtimeType: bloc.runtimeType);
  }
}
