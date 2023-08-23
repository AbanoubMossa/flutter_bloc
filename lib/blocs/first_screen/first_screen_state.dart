class FirstScreenState {}

class InitialState extends FirstScreenState {}

class NavigationToFirstScreensState extends FirstScreenState {
  final String text;

  NavigationToFirstScreensState({required this.text});
}

class NavigationToSecondScreenState extends FirstScreenState {
  final String text;

  NavigationToSecondScreenState({required this.text});
}

class NavigationToTherdScreenState extends FirstScreenState {
  final String text;

  NavigationToTherdScreenState({required this.text});
}

class NavigationToFourthScreenState extends FirstScreenState {
  final String text;

  NavigationToFourthScreenState({required this.text});
}
