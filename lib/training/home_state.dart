class HomeState{}

class HomeInitial extends HomeState{}

class IncrementState extends HomeState{
  int count = 0;
  IncrementState({required this.count});
}


class DecrementState extends HomeState{
  int count = 0;
  DecrementState({required this.count});
}

class ShowTextState extends HomeState{
  String test;
  ShowTextState({required this.test});
}
