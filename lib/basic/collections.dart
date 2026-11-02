/// Definition: collections group multiple values in a single variable.
void main() {
  final List<String> topics = ['variables', 'functions'];
  topics.add('classes');

  final Set<String> uniqueTags = {'Dart', 'Flutter', 'Dart'};
  final Map<String, int> lessonByTopic = {'variables': 1, 'functions': 2};

  print(topics); // A List keeps order and allows duplicates.
  print(uniqueTags); // A Set stores each value once.
  print(lessonByTopic['functions']); // A Map looks up a value by key.
}
