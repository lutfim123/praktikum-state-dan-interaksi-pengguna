import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dinamis/main.dart';

void main() {
  testWidgets('Dynamic list smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Dynamic List Example'), findsOneWidget);
    expect(find.text('Apple'), findsOneWidget);
    expect(find.text('Banana'), findsOneWidget);
    expect(find.text('Orange'), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'Tambahan Buah');
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('Tambahan Buah'), findsOneWidget);
  });
}
