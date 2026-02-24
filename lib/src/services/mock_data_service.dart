import '../models/grocery_item.dart';
import '../models/meal.dart';

class MockDataService {
  static List<Meal> weeklyMeals() => const [
        Meal(name: 'Protein Oats', calories: 420, day: 'Mon', slot: 'Breakfast'),
        Meal(name: 'Chicken Bowl', calories: 640, day: 'Mon', slot: 'Lunch'),
        Meal(name: 'Salmon Salad', calories: 560, day: 'Mon', slot: 'Dinner'),
      ];

  static List<GroceryItem> groceries() => const [
        GroceryItem(name: 'Eggs', category: 'Dairy'),
        GroceryItem(name: 'Spinach', category: 'Vegetables'),
        GroceryItem(name: 'Rice', category: 'Grains'),
      ];
}
