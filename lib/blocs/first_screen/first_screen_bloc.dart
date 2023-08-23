import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'first_screen_event.dart';
import 'first_screen_state.dart';

class FirstScreenBloc extends Bloc<FirstScreenEvent, FirstScreenState> {
  FirstScreenBloc() : super(InitialState()) {
    on<NavigationToFirstScreensEvent>(_onNavigateFirst);
    on<NavigationToSecondScreenEvent>(_onNavigateSecond);
    on<NavigationToTherdScreenEvent>(_onNavigateTherd);
    on<NavigationToFourthScreenEvent>(_onNavigateFourth);
  }

  FutureOr<void> _onNavigateFirst(
      NavigationToFirstScreensEvent event, Emitter<FirstScreenState> emit) {
    emit(NavigationToFirstScreensState(text: event.firstText));
  }

  FutureOr<void> _onNavigateSecond(
      NavigationToSecondScreenEvent event, Emitter<FirstScreenState> emit) {
    emit(NavigationToSecondScreenState(text: event.text));
  }

  FutureOr<void> _onNavigateTherd(
      NavigationToTherdScreenEvent event, Emitter<FirstScreenState> emit) {
    emit(NavigationToTherdScreenState(text: event.text));
  }

  FutureOr<void> _onNavigateFourth(
      NavigationToFourthScreenEvent event, Emitter<FirstScreenState> emit) {
    emit(NavigationToFourthScreenState(text: event.text));
  }
}
