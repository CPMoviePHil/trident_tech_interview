import 'package:bloc/bloc.dart';

class ValueNotifierCubit<T> extends Cubit<T> {

  ValueNotifierCubit({required T value}) : super(value);

  void change(T value) {
    if (value != state) {
      emit(value);
    }
  }
}

mixin _ValueNotifierMixin<T> on Cubit<T> {

  void change(T value) {
    if (value != state) {
      emit(value);
    }
  }

}

abstract class _ValueNotifierCubit<T> extends Cubit<T> with _ValueNotifierMixin {
  _ValueNotifierCubit({required T value}) : super(value);
}

final class ShowClassDetailCubit extends _ValueNotifierCubit<bool> {
  ShowClassDetailCubit({required super.value});
}
