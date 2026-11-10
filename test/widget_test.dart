import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ticket_app/main.dart';

void main() {
  testWidgets('home page shows the required widgets', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('Good morning,'), findsOneWidget);
    expect(find.text('Book Tickets'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });

  testWidgets('bottom navigation works', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text('Search'));
    await tester.pumpAndSettle();

    expect(find.text('Search page'), findsOneWidget);
  });
}
