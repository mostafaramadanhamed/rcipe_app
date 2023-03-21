class Recipe {
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int calories;
  final int duration; // in minutes

  Recipe({
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.calories,
    required this.duration,
  });
}
