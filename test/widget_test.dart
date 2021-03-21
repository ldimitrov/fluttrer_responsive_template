import 'package:flutter_test/flutter_test.dart';
import 'package:fluttrer_responsive_template/main.dart';

void main() {
  testWidgets('Find mobile view', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyResponsiveLayoutApp());

    expect(find.text('This is tablet view'), findsOneWidget);
  });
}
