import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:p_20250608/main.dart';

void main() {
  testWidgets('Init Screen Test', (WidgetTester tester) async {
    await tester.pumpWidget(const UebungMachtMeister());

    expect(find.text('Init Screen'), findsOneWidget);
    expect(
        find.text(
            'Morgen will ich sagen genau so wid jetzt: ich übe heute auch wie ich gestern gemacht habe.'),
        findsOneWidget);
    expect(find.byKey(Key('navigateToCounterScreenButton')), findsOneWidget);
  });
}
