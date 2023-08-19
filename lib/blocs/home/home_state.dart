part of 'home_bloc.dart';


abstract class HomeState {}

class HomeInitial extends HomeState {}

class IncrementState extends HomeState{
  final int value;
   IncrementState({required this.value});
}

class DecrementState extends HomeState{
  final int value;
  DecrementState({required this.value});
}

class ShowText extends HomeState{
  final String test;
  ShowText({required this.test});
}

