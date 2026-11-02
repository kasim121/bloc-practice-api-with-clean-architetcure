/// Definition: control flow chooses which code runs and how often it runs.
void main() {
  final int score = 82;

  if (score >= 50) {
    print('Passed');
  } else {
    print('Try again');
  }

  for (var lesson = 1; lesson <= 3; lesson++) {
    print('Lesson $lesson');
  }
}
