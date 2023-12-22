class NewsTileModel {
  final String? image;
  final String? title;
  final String? description;
  final String url;

  NewsTileModel({
    required this.image,
    required this.title,
    required this.description,
    required this.url,
  });

  factory NewsTileModel.fromJson(json) {
    return NewsTileModel(
      image: json['urlToImage'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
    );
  }
}
