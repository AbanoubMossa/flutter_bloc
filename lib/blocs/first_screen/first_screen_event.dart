part of 'first_screen_bloc.dart';

abstract class FirstScreenEvent {}

class NavigationToSocandScreenEvent extends FirstScreenEvent {
  final String textValue;

  NavigationToSocandScreenEvent({
    required this.textValue,
  });
}
