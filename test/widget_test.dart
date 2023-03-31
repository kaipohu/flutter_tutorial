import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tutorial/pages/home_page/home_page.dart';

import 'utils/widget_tester_extension.dart';

void main() {
  testWidgets(
    '''
    When the app is launched
    Then HomePage appears
  ''',
    (WidgetTester tester) async {
      await tester.pumpWidgetInTestApp(const HomePage());

      final homePageFinder = find.byType(HomePage);
      expect(homePageFinder, findsOneWidget);
    },
  );
}
