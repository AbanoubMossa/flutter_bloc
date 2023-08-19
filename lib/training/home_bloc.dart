import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sefen_bloc/training/home_event.dart';
import 'package:sefen_bloc/training/home_state.dart';


class HomeBloc extends Bloc<HomeEvent,HomeState>{
  HomeBloc() : super(HomeInitial()){
    on<IncrementEvent>(_onIncrementEvent);
    on<DecrementEvent>(_onDecrementEvent);
    on<ShowTextEvent>(_onShowTestEvent);
  }


  FutureOr<void> _onIncrementEvent(
      IncrementEvent event, Emitter<HomeState> emit){
    emit(IncrementState(count: event.count + 1));
  }

  FutureOr<void> _onDecrementEvent(
      DecrementEvent event, Emitter<HomeState> emit){
    emit(DecrementState(count: event.count - 1));
  }

  FutureOr<void> _onShowTestEvent(
      ShowTextEvent event , Emitter<HomeState> emit){
    emit(ShowTextState(test: event.test));
  }
}