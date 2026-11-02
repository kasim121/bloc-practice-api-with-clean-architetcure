/// Definition: asynchronous code can wait for work without blocking the app.
Future<String> loadMessage() async {
  await Future<void>.delayed(const Duration(milliseconds: 100));
  return 'Data loaded';
}

Future<void> main() async {
  final message = await loadMessage();
  print(message);
}
