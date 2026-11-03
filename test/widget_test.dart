import 'package:animooo/animoo.dart';
import 'package:animooo/core/routes/app_router.dart';
import 'package:animooo/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Animoo app smoke test', (WidgetTester tester) async {
    // بناء التطبيق مع تمرير الـ appRouter والـ initialRoute المطلوب
    await tester.pumpWidget(Animoo(
      appRouter: AppRouter(),
      initialRoute: Routes.onboarding,
    ));

    // تحقق من أن التطبيق يعمل ويظهر الشاشة الابتدائية بنجاح
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
