/// Definition: a variable is a named place to store a value.
/// Use `final` when a value is assigned once, and `var` when it may change.
void main() {
  final String learner = 'Sam'; // Assigned once.
  var lessonsCompleted = 2; // Can be updated.

  lessonsCompleted += 1;
  print('$learner completed $lessonsCompleted lessons.');
}
