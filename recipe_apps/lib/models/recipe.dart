class Recipe {
  final String title;
  final String time;
  final String rating;
  final String image;
  final String? author;

  Recipe({
    required this.title,
    required this.time,
    required this.rating,
    required this.image,
    this.author,
  });
}
