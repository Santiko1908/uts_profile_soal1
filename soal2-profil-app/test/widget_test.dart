// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:soal2_profil_app/main.dart';

void main() {
  testWidgets('valid login opens profile page', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.enterText(find.byType(TextFormField).at(0), 'test@example.com');
    await tester.enterText(find.byType(TextFormField).at(1), 'password123');
    await tester.tap(find.text('LOGIN'));
    await tester.pumpAndSettle();

    expect(find.text('Profil Saya'), findsOneWidget);
    expect(find.text('Angger Santiko'), findsOneWidget);
    expect(find.text('Teknik Informatika'), findsOneWidget);
    expect(
      find.text(
        'Mahasiswa yang tertarik pada teknologi, investasi dan market global',
      ),
      findsOneWidget,
    );
    expect(find.text('1124160099'), findsOneWidget);
    expect(find.text('TISE24 Malam'), findsOneWidget);
    expect(find.text('Informasi Kontak'), findsOneWidget);
    expect(find.text('anggersantikogaul@gmail.com'), findsOneWidget);
    expect(find.text('082314946902'), findsOneWidget);
    expect(find.text('Santiko1908'), findsOneWidget);
    expect(find.byIcon(Icons.person), findsOneWidget);
  });
}
