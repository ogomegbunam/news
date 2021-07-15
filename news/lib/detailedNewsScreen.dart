import 'package:flutter/material.dart';
import 'package:news/models/newsInfo.dart';

import 'model/newsInfo.dart';

class DetailedNews extends StatefulWidget {
  final Articles articles;

  const DetailedNews({
    Key? key,
    required this.articles,
  }) : super(key: key);

  @override
  _DetailedNewsState createState() => _DetailedNewsState();
}

class _DetailedNewsState extends State<DetailedNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed Page'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                height: 200,
                child: Image.network(widget.articles.urlToImage),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.articles.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.articles.publishedAt,
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(
                height: 10,
              ),
              Text(widget.articles.description),
              SizedBox(
                height: 10,
              ),
              Text(widget.articles.content),
              SizedBox(
                height: 10,
              ),
              Container()
            ],
          )),
        ),
      ),
    );
  }
}
