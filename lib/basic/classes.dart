/// Definition: a class describes the data and behavior of objects.
class Course {
  Course(this.name, this.lessonCount);

  final String name;
  final int lessonCount;

  String summary() => '$name has $lessonCount lessons.';
}

void main() {
  final course = Course('Dart basics', 9); // Create an object from the class.
  print(course.summary());
}
