class NewsModel {
  String status = 'status';
  int totalResults = 1;
  List<Articles> articles = [];

  NewsModel(this.status, this.totalResults, this.articles);

  NewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    json['articles'].forEach((v) {
      articles.add(new Articles.fromJson(v));
    });
  }
}

class Articles {
  Source source = Source(id: 'id', name: 'name');
  String? author;
  String title = 'title';
  String description = ' description';
  String url = 'url';
  String urlToImage = 'urlToImage';
  String publishedAt = ' publishedAt';
  String content = ' content';

  Articles({
    required this.source,
    this.author,
    this.title = '',
    this.description = '',
    this.url = '',
    this.urlToImage = '',
    this.publishedAt = '',
    this.content = '',
  });

  Articles.fromJson(Map<String, dynamic> json) {
    source = Source.fromJson(json['source']);
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
}

class Source {
  String id = 'id';
  String name = 'name';

  Source({
    required this.id,
    required this.name,
  });

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}
