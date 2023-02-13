import 'package:flutter/material.dart';

///
class BaseState {}

///
class InitialState extends BaseState {}

///
class SuccessState extends BaseState {
  ///
  final Color randColor;

  ///
  final int points;

  ///
  SuccessState({required this.randColor, required this.points});
}
