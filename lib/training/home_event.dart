class HomeEvent{}

class IncrementEvent extends HomeEvent{
  final int count;
  IncrementEvent({required this.count});
}

class DecrementEvent extends HomeEvent{
  final int count;
  DecrementEvent({required this.count});
}


class ShowTextEvent extends HomeEvent{
  final String test;
  ShowTextEvent({required this.test});
}
