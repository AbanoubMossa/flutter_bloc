import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<IncrementEvent>(_onIncrementEvent);
    on<DecrementEvent>(_onDecrementEvent);
  }

  FutureOr<void> _onIncrementEvent(
      IncrementEvent event, Emitter<HomeState> emit) {
    emit(IncrementState(value: event.value + 1));
  }

  FutureOr<void> _onDecrementEvent(
      DecrementEvent event, Emitter<HomeState> emit) {
    if (event.value == 0) {
      emit(DecrementState(value: event.value));
    } else {
      emit(DecrementState(value: event.value - 1));
    }
  }
}
