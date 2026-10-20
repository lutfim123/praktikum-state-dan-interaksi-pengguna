import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:proses_input/main.dart';

void main() {
  testWidgets('User input test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('User Input Example'), findsOneWidget);
    expect(find.text('You entered: '), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'Hello Flutter');
    await tester.pump();

    expect(find.text('You entered: Hello Flutter'), findsOneWidget);
  });
}
