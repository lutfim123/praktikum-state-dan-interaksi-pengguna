import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_callback/main.dart';

void main() {
  testWidgets('Callback smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Callback Example'), findsOneWidget);
    expect(find.text('Press Me'), findsOneWidget);

    await tester.tap(find.text('Press Me'));
    await tester.pump();
  });
}
