import 'package:blocprac/app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Posts screen loads', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Posts'), findsOneWidget);
  });
}
