part of 'home_bloc.dart';


abstract class HomeEvent {}

class IncrementEvent extends HomeEvent{
  final int value ;

  IncrementEvent({required this.value});
}

class DecrementEvent extends HomeEvent{

  final int value;
  DecrementEvent({required this.value});
}
