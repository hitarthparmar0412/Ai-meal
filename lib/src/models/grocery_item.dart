class GroceryItem {
  const GroceryItem({required this.name, required this.category, this.isDone = false});

  final String name;
  final String category;
  final bool isDone;

  GroceryItem copyWith({bool? isDone}) {
    return GroceryItem(name: name, category: category, isDone: isDone ?? this.isDone);
  }
}
