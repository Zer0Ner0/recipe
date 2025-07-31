class Recipe {
  final int id;
  final String title;
  final String image;
  final String author;
  final String time;
  final String rating;

  Recipe({
    required this.id,
    required this.title,
    required this.image,
    required this.author,
    required this.time,
    required this.rating,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      author: json['author'],
      time: json['time'],
      rating: json['rating'].toString(),
    );
  }
}
