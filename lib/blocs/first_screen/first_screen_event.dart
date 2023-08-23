abstract class FirstScreenEvent {}

class NavigationToFirstScreensEvent extends FirstScreenEvent {
  final String firstText;

  NavigationToFirstScreensEvent({required this.firstText});
}

class NavigationToSecondScreenEvent extends FirstScreenEvent {
  final String text;

  NavigationToSecondScreenEvent({required this.text});
}

class NavigationToTherdScreenEvent extends FirstScreenEvent {
  final String text;

  NavigationToTherdScreenEvent({required this.text});
}

class NavigationToFourthScreenEvent extends FirstScreenEvent {
  final String text;

  NavigationToFourthScreenEvent({required this.text});
}
