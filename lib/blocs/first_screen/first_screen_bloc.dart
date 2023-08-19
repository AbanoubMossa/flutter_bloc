import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'first_screen_event.dart';

part 'first_screen_state.dart';

class FirstScreenBloc extends Bloc<FirstScreenEvent, FirstScreenState> {
  FirstScreenBloc() : super(FirstScreenInitial()) {
    on<NavigationToSocandScreenEvent>(_onNavigationToSocandScreenEvent);
  }

  FutureOr<void> _onNavigationToSocandScreenEvent(
      NavigationToSocandScreenEvent event, Emitter<FirstScreenState> emit) {
    emit(NavigationToSocandScreenState(textValue: event.textValue));
  }
}
