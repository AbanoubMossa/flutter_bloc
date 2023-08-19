part of 'first_screen_bloc.dart';

abstract class FirstScreenState {}

class FirstScreenInitial extends FirstScreenState {}

class NavigationToSocandScreenState extends FirstScreenState {
  final String textValue;

  NavigationToSocandScreenState({
    required this.textValue,
  });
}
