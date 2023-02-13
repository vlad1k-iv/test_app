import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/cubit/base_state.dart';

///
class HomeCubit extends Cubit<BaseState> {
  static const int _divide = 5;
  final Random _rand = Random();

  ///
  int counter = 0;

  ///
  int points = 0;

  ///
  HomeCubit() : super(InitialState());

  ///
  void reloadColor() {
    if (counter > 1 && counter % _divide == 0) {
      points = points + 1;
    }
    emit(InitialState());
    final Color randColor =
        Color((_rand.nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    emit(SuccessState(randColor: randColor, points: points));
    counter = counter + 1;
  }
}
