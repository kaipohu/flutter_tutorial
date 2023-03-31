import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tutorial/app.dart';

void main() {
  testWidgets('This test does nothing', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
  });
}
