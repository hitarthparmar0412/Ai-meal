import 'package:ai_meal/src/app/ai_meal_app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('renders bottom navigation tabs', (tester) async {
    await tester.pumpWidget(const AiMealApp());

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Planner'), findsOneWidget);
    expect(find.text('Track'), findsOneWidget);
    expect(find.text('Grocery'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
